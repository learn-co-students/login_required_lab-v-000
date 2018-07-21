Rails.application.routes.draw do
  root 'application#hello'
  get '/sessions/new'
  # get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
