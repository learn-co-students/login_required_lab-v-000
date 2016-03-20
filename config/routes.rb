Rails.application.routes.draw do

  resources :sessions, only: [:new, :create]
  post 'sessions/destroy', to: 'sessions#destroy'
  get 'secrets', to: 'secrets#show'

  root 'sessions#new'
end
