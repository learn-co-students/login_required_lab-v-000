Rails.application.routes.draw do
  get '/secrets', to: 'secrets#show'
  get '/create', to: 'sessions#create'
  get '/new', to: 'sessions#new'
  get '/destroy', to: 'sessions#destroy'
end
