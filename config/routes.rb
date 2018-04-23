Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/create', to: 'sessions#create'
  post '/destroy', to: 'sessions#destroy'
  get '/show', to: 'secrets#show'

end
