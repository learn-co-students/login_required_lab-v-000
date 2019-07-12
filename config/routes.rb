Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/secret', to: 'secrets#show'
  get '/show', to: 'sessions#show'
  post '/create', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
