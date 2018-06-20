class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  rescue_from Rack::Timeout::RequestTimeoutException do |exception|
	  # do something
	  @timeout_reason = exception
	end
	
end
