Rails.application.routes.draw do
  

  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'sessions#welcome'
  get '/show', to: 'secrets#show'
  post '/logout', to: 'sessions#destroy'
  get '/home', to: 'application#home'
  
  root to: 'application#home'
end
