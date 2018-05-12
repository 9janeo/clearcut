Rails.application.routes.draw do


	root 'keywords#index'
  
	  resources :consultants
	  resources :services
	  resources :keywords
	  resources :estimates

  get 'estimates', to: 'estimates#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
