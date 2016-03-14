Rails.application.routes.draw do
  resources :sessions, only: [:new, :create]
    post '/sessions/destroy', to: 'sessions#destroy'
    get '/', to: 'sessions#index'
    resources :secrets, only: [:show]
    get '/secrets/show', to: 'secrets#show'
end
