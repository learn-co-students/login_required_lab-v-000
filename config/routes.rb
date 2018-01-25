Rails.application.routes.draw do
  
  root 'sessions#index'

  resources :sessions, only: [:index, :new, :create]

  get 'secrets' => 'secrets#show', as: :secret
  post 'sessions/destroy' => 'sessions#destroy', as: :session

end