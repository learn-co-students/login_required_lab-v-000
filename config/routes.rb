Rails.application.routes.draw do
  get '/secret' => 'secrets#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get 'secret' => 'secrets#show'

  root 'application#hello'
end
