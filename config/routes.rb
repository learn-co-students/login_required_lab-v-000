Rails.application.routes.draw do
  root 'sessions#hello'
  get '/show' => 'secrets#show'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'

  get '/logout' => "sessions#destroy"

end
