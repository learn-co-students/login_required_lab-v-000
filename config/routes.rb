Rails.application.routes.draw do
  root 'application#index'

  post '/login', to: 'sessions#login'

  resources :sessions

  post '/destroy', to: 'sessions#destroy'

  get '/secrets/secret', to: 'secrets#secret', as: :secret_page

  get '/secrets', to: 'secrets#show'
end
