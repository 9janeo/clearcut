class DashboardController < ApplicationController
  
  def index
  	if user_signed_in?
  		@user = current_user
  		@user_orders = @user.orders
  		@user_keywords = @user.keywords
  		#redirect_to keywords_path
  	else
  		redirect_to new_user_session_url
  	end
  end

  class HomeController < ApplicationController
  def index
    @eyejee = Instagram.media_popular
  end
end

end
