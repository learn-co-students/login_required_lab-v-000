Rails.application.routes.draw do
  root 'sessions#index'

  get '/show', to: 'secrets#show'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  get '/destroy', to: 'sessions#destroy'

  post '/destroy', to: 'sessions#destroy'
end
