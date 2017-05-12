Rails.application.routes.draw do
  get 'secrets/show', to: 'secrets#show'
  post 'sessions/create', to: 'sessions#create'
  post 'session/destroy', to: 'sessions#destroy'
  root 'sessions#new'
end
