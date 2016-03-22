Rails.application.routes.draw do
  resources :secrets
  resources :sessions
  post 'sessions/destroy', to: 'sessions#destroy'
end
