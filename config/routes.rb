Rails.application.routes.draw do

  root 'application#hello'
  get '/sessions/new' => 'sessions#new'
  post '/sessions/new' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'

end
