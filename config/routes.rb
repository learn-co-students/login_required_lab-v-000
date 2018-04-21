Rails.application.routes.draw do
root 'application#default'

resources :sessions, except: [:new, :create, :destroy]

get "/login", to: "sessions#new"
post "/login", to: "sessions#create" 
post '/logout', to: 'sessions#destroy'



resources :secrets
  get "/secret", to: "secrets#show"
end
