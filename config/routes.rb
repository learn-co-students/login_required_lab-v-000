Rails.application.routes.draw do
  root 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome'
  get '/show', to: 'secrets#show'
  post '/logout', to: 'sessions#destroy'
end
