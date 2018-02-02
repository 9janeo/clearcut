class Keyword < ApplicationRecord
	has_many :tweets, dependent: :destroy

	def grab_tweets
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "OpwmCK2WU9ZCh8qjNrf2mvtFS"
		  config.consumer_secret     = "w4L28AIbyih50rJgA2Az3kAqnG6LZ34SlKCp0rhoLBHsKXDpPF"
		  config.access_token        = "78136091-WvBjxadNsO5x3dlhYeQeHcuFDigQQkpRKB9nYN5Ao"
		  config.access_token_secret = "lGrH6sWop5zjPUWmyXgT3vuQZrFWddxzZg8VhwdqiqV37"
		end

		client.search(self.word, count: 100	, result_type: "recent").take(100).collect do |tweet|
			new_tweet = Tweet.new

			new_tweet.tweet_id=tweet.id.to_s
			new_tweet.tweet_created_at = tweet.created_at
			new_tweet.text = tweet.text

			new_tweet.user_id = tweet.user.id
			new_tweet.user_name = tweet.user.name
			new_tweet.user_screen_name = tweet.user.screen_name
			new_tweet.user_image_url = tweet.user.profile_image_url

			new_tweet.keyword = self

			new_tweet.save
		end		
	end

	def self.grab_all_tweets
		Keyword.all.each do |keyword|
			keyword.grab_tweets
		end
	end

	def clear_tweets
		self.tweets.all.each do |twit|
			twit.destroy		#code to fetch and destroy all keyword tweets
		end
	end

	def clear_dud_tweets
		active_list = Keyword.all.map { |keyword| keyword.id }
		duds = Tweet.all.where('keyword_id NOT IN (?)', active_list)
		duds.each do |dud|
			dud.destroy
		end
	end
end
