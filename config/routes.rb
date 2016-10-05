Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "user/registrations"}

	root 'welcome#index'
  
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show] do
  	member do
  		get 	:new_challenge
  		post 	:new_challenge
  	end
  end
  resources :friendships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	# root :to => "landingpage#index"  added yesterday


	# root 'welcome#index'
	# root 'landingpage#index'  added yesterday

	get 'my_portfolio', to: 'users#my_portfolio'
	get 'search_stocks', to: 'stocks#search'
	get 'my_friends', to: 'users#my_friends'
	get 'search_friends', to: "users#search"
	post 'add_friend', to: "users#add_friend"
	get 'challenges', to: "users#challenges"
end
