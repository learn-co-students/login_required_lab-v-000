Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'
  get '/login', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get 'secrets/show', to: 'secrets#show'
  get 'sessions/welcome', to: 'sessions#welcome'
  post '/logout', to: 'sessions#destroy'
end
