class DashboardController < ApplicationController
  
  def index
  	if user_signed_in?
  		@user = current_user
  		@user_orders = @user.orders
  		@user_keywords = @user.keywords
  		#redirect_to keywords_path
  	else
  		redirect_to login_path
  	end
  end

end
