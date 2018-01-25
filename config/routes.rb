Rails.application.routes.draw do

  get 'secrets/new'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/login' => 'sessions#destroy'

  get '/secret' => 'secrets#show'

end