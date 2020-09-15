Rails.application.routes.draw do
  root 'sessions#index'

  get  '/login', to: 'sessions#show'
  get '/new', to: 'sessions#new'
  post '/', to: 'sessions#create'
  post '/destroy', to: 'sessions#destroy'

  get  '/secrets', to: 'secrets#show'

  
end
