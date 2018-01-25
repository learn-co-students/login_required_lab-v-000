Rails.application.routes.draw do
  root 'sessions#create'

  get '/secrets', to: 'secrets#show'
  get '/create', to: 'sessions#new'
  post '/create', to: 'sessions#create'
  post '/destroy', to: 'sessions#destroy'
end
