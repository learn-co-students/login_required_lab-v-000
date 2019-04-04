Rails.application.routes.draw do
  root 'application#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  get 'secrets/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
