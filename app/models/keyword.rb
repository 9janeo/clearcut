class Keyword < ApplicationRecord
	def grab_tweets
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = "OpwmCK2WU9ZCh8qjNrf2mvtFS"
		  config.consumer_secret     = "w4L28AIbyih50rJgA2Az3kAqnG6LZ34SlKCp0rhoLBHsKXDpPF"
		  config.access_token        = "78136091-WvBjxadNsO5x3dlhYeQeHcuFDigQQkpRKB9nYN5Ao"
		  config.access_token_secret = "lGrH6sWop5zjPUWmyXgT3vuQZrFWddxzZg8VhwdqiqV37"
		end

		client.search(self.word, result_type: "recent").take(3).collect do |tweet|
		  "#{tweet.user.screen_name}: #{tweet.text}"
		end
	end
end
