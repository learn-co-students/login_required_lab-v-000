Rails.application.routes.draw do
  root 'sessions#login'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/session', to: 'sessions#show'
  get '/session/new', to: 'sessions#new'
  post '/session/new', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  get '/secret', to: 'secrets#show'
  
  resources :users
end
