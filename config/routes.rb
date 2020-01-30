Rails.application.routes.draw do
  get '/secrets/show', to: 'secrets#show'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
