Rails.application.routes.draw do

  resources :sessions, only: [:new, :create]
  post :sessions, to: 'sessions#destroy'
  
  get '/secrets', to: 'secrets#show'
end
