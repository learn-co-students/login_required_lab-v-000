Rails.application.routes.draw do
  root 'application#hello'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'index', to: 'secrets#index'
  get 'show', to: 'secrets#show'
end
