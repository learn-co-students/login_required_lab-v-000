Rails.application.routes.draw do
	# resources :application, only: [:index]
 #  get 'secrets/show', to: 'secrets#show'
 #  resources :sessions, only: [:index, :new, :create, :destroy]

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
