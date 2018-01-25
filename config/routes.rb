Rails.application.routes.draw do
  root 'sessions#login'
  resources :sessions, only: [:create, :new, :destroy]
  get 'secrets/show', to: 'secrets#show'
  get 'sessions/new', to: 'sessions#new'
  post 'logout', to: 'sessions#destroy'
end
