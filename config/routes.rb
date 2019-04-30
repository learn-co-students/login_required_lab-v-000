Rails.application.routes.draw do
  get 'secrets/new'

  resources :sessions, only: [:index, :new, :create]

  # get 'sessions/new'

  # get 'sessions/index'
  # post '/sessions'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
