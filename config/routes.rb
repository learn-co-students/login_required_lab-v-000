Rails.application.routes.draw do

post 'sessions/destroy'
get 'secrets/show'

resources :sessions, only: [:new, :create]
end
