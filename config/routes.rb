Rails.application.routes.draw do
 get '/secret', to: 'secrets#show'
 get '/login', to: 'sessions#new'
 post'/create', to: 'sessions#create'
 get '/welcome', to: 'sessions#welcome'
 post 'destroy', to: 'sessions#destroy'
end
