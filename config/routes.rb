Rails.application.routes.draw do
  root 'application#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get '/secrets', to: 'secrets#show'
end
