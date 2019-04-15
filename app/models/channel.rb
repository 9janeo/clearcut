class Channel < ApplicationRecord
	belongs_to :user
	has_many :ig_client

	# def Eyejee		
	#   ig_client = InstagramApi.config do |config|
	#     config.access_token = ENV["IG_ACCESS_TOKEN"]
	#     config.client_id = ENV["IG_CLIENT_ID"]
	#     config.client_secret = ENV["IG_CLIENT_SECRET"]
	#   end



	#   # @ig_user = ig_client.user('NeoAdewole').show
	#   # @ig_user_comments = ig_client.user('NeoAdewole').recent_media    
	# end

	def self.call_ig_client
    ig_client = InstagramApi.config do |config|
      config.access_token = ENV["IG_ACCESS_TOKEN"]
      config.client_id = ENV["IG_CLIENT_ID"]
      config.client_secret = ENV["IG_CLIENT_SECRET"]
    end

    # new_ig_client = Ig_client.new

    ig_client.user = self.user('NeoAdewole')
    ig_client.user.comments = self.user('NeoAdewole').recent_media

    #@ig_client = 
    ig_client.save

    # new_ig_client = new_ig_client.new 
    # ig_client.user = ig_client.user('NeoAdewole').show

    # @ig_user = ig_client.user('NeoAdewole').show
    # @ig_user_comments = ig_client.user('NeoAdewole').recent_media
  end

		# client.search(self.word, count: 100	, result_type: "recent").take(100).collect do |tweet|
		# 	new_tweet = Tweet.new

		# 	new_tweet.tweet_id=tweet.id.to_s
		# 	new_tweet.tweet_created_at = tweet.created_at
		# 	new_tweet.text = tweet.text

		# 	new_tweet.user_id = tweet.user.id
		# 	new_tweet.user_name = tweet.user.name
		# 	new_tweet.user_screen_name = tweet.user.screen_name
		# 	new_tweet.user_image_url = tweet.user.profile_image_url

		# 	new_tweet.keyword = self

		# 	new_tweet.save
		# end		

end
