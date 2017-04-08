Rails.application.routes.draw do
  root "sessions#index"
  get 'sessions/index'

  get 'secrets/show'
  get 'sessions/new'
  post 'sessions/create'
  post 'sessions/destroy'
end
