Rails.application.routes.draw do
  

  
  get '/login', to: 'sessions#new'
  get '/show', to: 'secrets#show'
  post '/', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  root to: 'application#home'
end
