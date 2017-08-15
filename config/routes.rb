Rails.application.routes.draw do

  root to: 'sessions#login'

  get '/secrets', to: 'secrets#show'
  get '/login', to: 'sessions#new'
  get '/welcome', to: 'sessions#welcome'
  post '/create', to: 'sessions#create'
  post '/destroy', to: 'sessions#destroy'


end
