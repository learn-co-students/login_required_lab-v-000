Rails.application.routes.draw do
  root 'application#welcome'
  get 'new', to: 'sessions#new'
  post 'logout', to: 'sessions#destroy'
  post 'create', to: 'sessions#create'
  get 'show', to: 'sessions#show'
  get '/secret', to: 'secrets#show'
end
