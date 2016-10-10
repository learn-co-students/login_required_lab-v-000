Rails.application.routes.draw do

  resources :sessions, only: [:index, :new]

  get 'show', to: 'secrets#show'
  post 'create', to: 'sessions#create'
  post 'destroy', to: 'sessions#destroy'
  root 'sessions#index'
  get 'welcome', to: 'sessions#welcome'
end
