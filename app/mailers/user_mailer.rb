class UserMailer < ApplicationMailer

	def welcome_email
		@user = params[:user]
		@url = Env.production? 'https://clearcutcomms.herokuapp.com/' : 'localhost:3000'
		mail(to: @user.email, subject: 'Welcome to the Clear Cut Community')
	end

	def confirm_order
		@user = params[:user]
		@url = Env.production? 'https://clearcutcomms.herokuapp.com/' : 'localhost:3000'
		mail(to: @user.email, subject: "Processing your order: #{@order}")
	end

end
