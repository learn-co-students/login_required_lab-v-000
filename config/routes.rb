Rails.application.routes.draw do
  get 'login', to: "sessions#new"
  post 'login', to: "sessions#create"
  post 'logout', to: 'sessions#destroy'
  get '/secret', :to => 'secrets#show', as: 'top_secret'
  root to: "sessions#new"

end
