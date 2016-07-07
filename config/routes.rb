Rails.application.routes.draw do

  root 'application#welcome'

  get '/secrets' => 'secrets#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
