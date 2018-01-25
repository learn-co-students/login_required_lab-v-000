Rails.application.routes.draw do
resources :sessions, only: [:create]
root 'sessions#new'

get 'welcome', to: 'secret#index'
get 'secret', to: 'secret#show', as: 'secret'
post 'logout', to: 'sessions#destroy'
end
