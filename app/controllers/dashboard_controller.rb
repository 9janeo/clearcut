class DashboardController < ApplicationController
  
  def index
  	if user_signed_in?
  		@user = current_user
  		@user_orders = @user.orders
  		@user_keywords = @user.keywords

      # if @user.channels? 
      #   @eyejee = (@ig_client.blank? ? "This is eyejee" : @ig_client.eyejee)
      
  		#redirect_to keywords_path
  	else
  		redirect_to new_user_session_url
  	end
  end

  # def call_ig_client
  #   ig_client = InstagramApi.config do |config|
  #     config.access_token = ENV["IG_ACCESS_TOKEN"]
  #     config.client_id = ENV["IG_CLIENT_ID"]
  #     config.client_secret = ENV["IG_CLIENT_SECRET"]
  #   end

  #   # new_ig_client = Ig_client.new

  #   ig_client.user = self.user('NeoAdewole')
  #   ig_client.user.comments = self.user('NeoAdewole').recent_media

  #   @ig_client = ig_client.save

  #   # new_ig_client = new_ig_client.new 
  #   # ig_client.user = ig_client.user('NeoAdewole').show

  #   # @ig_user = ig_client.user('NeoAdewole').show
  #   # @ig_user_comments = ig_client.user('NeoAdewole').recent_media
  # end

end
