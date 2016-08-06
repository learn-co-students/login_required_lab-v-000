Rails.application.routes.draw do

  root 'sessions#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/secrets' => 'secrets#show'
  get '/logout' => 'sessions#destroy'

end
