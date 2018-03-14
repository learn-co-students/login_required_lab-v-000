Rails.application.routes.draw do

  root to: "application#home"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"

  resource :secrets, only: [:show]

  # get 'secrets/new'
  #
  # root 'application#hello'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  #
  # get '/secret' => 'secrets#show'

end
