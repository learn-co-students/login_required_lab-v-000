Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create' 
  get '/logout', to: 'sessions#destroy'
  get '/secret', to: 'secrets#show'

end
