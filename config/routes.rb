Rails.application.routes.draw do
  get 'secrets/show', to: 'secrets#show'

  get 'sessions/new', to: 'sessions#new'
  post 'sessions/create', to: 'sessions#create'
  resource :sessions

  root to: 'secrets#show'
end
