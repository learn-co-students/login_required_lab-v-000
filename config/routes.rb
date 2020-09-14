Rails.application.routes.draw do
  root 'sessions#index'

  get '/login', to: 'sessions#index'
  get '/secrets', to: 'secrets#show'

  resources :sessions
end
