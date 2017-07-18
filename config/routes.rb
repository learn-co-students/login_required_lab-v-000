Rails.application.routes.draw do
    get '/show', to: 'secrets#show'
    get '/new', to: 'sessions#new'
    post '/create', to: 'sessions#create'
    post '/destroy', to: 'sessions#destroy'
    root to: 'secrets#login'
  end
