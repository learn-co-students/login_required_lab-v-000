Rails.application.routes.draw do

  root to: 'sessions#new'

  resource :secrets, only: [:show]

  resource :sessions, only: [:new, :create, :destroy]

end
