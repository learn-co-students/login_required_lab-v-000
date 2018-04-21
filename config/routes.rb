Rails.application.routes.draw do

  root 'application#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create', as: 'create_session'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'

end
