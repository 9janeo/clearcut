class Keyword < ApplicationRecord
	has_many :tweets

	def grab_tweets
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "OpwmCK2WU9ZCh8qjNrf2mvtFS"
		  config.consumer_secret     = "w4L28AIbyih50rJgA2Az3kAqnG6LZ34SlKCp0rhoLBHsKXDpPF"
		  config.access_token        = "78136091-WvBjxadNsO5x3dlhYeQeHcuFDigQQkpRKB9nYN5Ao"
		  config.access_token_secret = "lGrH6sWop5zjPUWmyXgT3vuQZrFWddxzZg8VhwdqiqV37"
		end

		client.search(self.word, count: 10, result_type: "recent").take(10).collect do |tweet|
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
end
