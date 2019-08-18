Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/secrets', to: 'secrets#index'
  get '/secret', to: 'secrets#show'
  post '/logout', to: 'sessions#destroy'
  root 'sessions#new'
end
