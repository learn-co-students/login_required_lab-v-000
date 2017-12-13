Rails.application.routes.draw do
  get '/new', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/destroy', to: 'sessions#destroy'
  
  get '/secret', to: 'secrets#show'
end
