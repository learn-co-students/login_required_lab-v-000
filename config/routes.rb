Rails.application.routes.draw do
  root 'secrets#index'
  get 'secrets/show', to: 'secrets#show'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
end
