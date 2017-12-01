Rails.application.routes.draw do
  root 'sessions#index'
  get '/show', to: 'secrets#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
end
