Rails.application.routes.draw do

  resources :sessions, only: [:create]

  get "sessions/new", to: "sessions#new", as: "login"

  get "sessions/destroy", to: "sessions#destroy"

  get "secrets/show", to: "secrets#show"



   
end
