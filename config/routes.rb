Rails.application.routes.draw do
  get 'secrets/show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/homepage', to: 'sessions#show', as: 'homepage'
  delete '/logout', to: 'sessions#destroy'
  
end
