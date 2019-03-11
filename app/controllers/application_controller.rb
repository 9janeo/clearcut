class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  InstagramApi.config do |config|
	  config.access_token = ENV["IG_APP_ACCESS_TOKEN"]
	  config.client_id = ENV["IG_APP_CLIENT_ID"]
	  config.client_secret = ENV["IG_APP_CLIENT_SECRET"]
	end

end
