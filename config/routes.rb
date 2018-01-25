Rails.application.routes.draw do
  root 'application#index'

  get 'secrets/show' => 'secrets#show', as: 'secret'
  get 'sessions/new' => 'sessions#new', as: 'login'
  post 'sessions' => 'sessions#create'
  post 'sessions/destroy' => 'sessions#destroy', as: 'destroy'
end
