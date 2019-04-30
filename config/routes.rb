Rails.application.routes.draw do
  # root 
  resources :sessions, only: [:index, :new, :create, :show]
  get '/sessions', to: 'sessions#destroy'

  get 'secrets/new' 
  get '/secret' => 'secrets#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
