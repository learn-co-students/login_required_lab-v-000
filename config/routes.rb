Rails.application.routes.draw do
  get 'sessions/new'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/hello' => 'application#hello'
  get '/secret' => 'secrets#show'
  post '/logout' => 'sessions#destroy'
end
