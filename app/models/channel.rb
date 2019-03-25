class Channel < ApplicationRecord
	belongs_to :user


	class Eyejee
    ig_client = InstagramApi.config do |config|
      config.access_token = ENV["IG_ACCESS_TOKEN"]
      config.client_id = ENV["IG_CLIENT_ID"]
      config.client_secret = ENV["IG_CLIENT_SECRET"]
    end

    @ig_user = ig_client.user('NeoAdewole').show
    @ig_user_comments = ig_client.user('NeoAdewole').recent_media    
  end

end
