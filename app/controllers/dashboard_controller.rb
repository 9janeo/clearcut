class DashboardController < ApplicationController
  
  def index
  	if !user_signed_in?
  		redirect_to new_user_session_path
    else
      @user = current_user
      @user_orders = @user.orders
      @user_keywords = @user.keywords
      #redirect_to keywords_path
  	end
  end

end
