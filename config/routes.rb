Rails.application.routes.draw do
 
  root 'sessions#new'
  resources :sessions, only: [:create, :show, :destroy]
  post 'sessions/destroy'
  get 'secrets/show'

end
