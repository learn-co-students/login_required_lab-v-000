Rails.application.routes.draw do
  get '/secret', to: 'secrets#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  root 'application#welcome'
end
