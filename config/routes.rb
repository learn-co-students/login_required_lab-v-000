Rails.application.routes.draw do

  root 'applicatio#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secrets' => 'secrets#show'
end
