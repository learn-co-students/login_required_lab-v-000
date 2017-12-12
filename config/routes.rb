Rails.application.routes.draw do

  resources 'sessions', only: [:new, :create]
  get 'sessions/destroy', to: 'sessions#destroy'
  get 'secrets', to: 'secrets#show'

end