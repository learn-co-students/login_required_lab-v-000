Rails.application.routes.draw do
  root to: 'application#welcome'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
