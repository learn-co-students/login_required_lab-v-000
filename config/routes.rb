Rails.application.routes.draw do

  resources :sessions, only: [:index, :new, :create, :show]
  resources :secrets, only: [:new, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
