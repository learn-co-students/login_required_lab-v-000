Rails.application.routes.draw do
  get '/secrets', to: 'secrets#show'
  resources :sessions
  get 'sessions/destroy', to: 'sessions#destroy'
  root 'sessions#new'
end
