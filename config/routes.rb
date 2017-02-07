Rails.application.routes.draw do
  resources :sessions, only: [:index, :new, :create, :destroy]
  get '/login', to: 'sessions#new'
  delete '/sessions', to: 'sessions#destroy'

  resources :secrets, only: [:show]
  get '/secret', to: 'secrets#show'
end
