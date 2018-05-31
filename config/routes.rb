Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'secrets#show'
  post '/logout' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
