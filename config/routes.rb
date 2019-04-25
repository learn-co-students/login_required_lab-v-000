Rails.application.routes.draw do
  get 'sessions/create'

  get 'secrets/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :destroy]
  resources :secrets, only: [:show]
end
