Rails.application.routes.draw do
 get '/secret', to: 'secrets#show'
 get '/login', to: 'sessions#new'
 get '/destroy', to: 'sessions#destroy'

 resources :sessions, only: [:create]
 root 'sessions#login'
end
