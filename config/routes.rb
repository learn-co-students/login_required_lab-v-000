Rails.application.routes.draw do
  resources :sessions

  get 'sessions/destroy', to: "sessions#destroy"

  resources :secrets

  get 'secrets/show', to: "secrets#show"
end
