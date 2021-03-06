Rails.application.routes.draw do



  devise_for :users
  post '/aws/auth',
  	to: 'users#aws_auth',
  	defaults: {format: 'json'},
  	as: 'aws_auth'
  	
	root 'dashboard#index'
  
  	get 'dashboard/index'
	  resources :orders
	  resources :consultants
	  resources :services
	  resources :keywords
	  resources :estimates

  get 'estimates', to: 'estimates#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
