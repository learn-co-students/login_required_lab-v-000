Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  post '/sessions/destroy', to: 'sessions#destroy'
  resources :sessions
  get '/secret', to: 'secrets#show'


end
