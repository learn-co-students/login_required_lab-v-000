Rails.application.routes.draw do

  root 'application#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  get '/secret', to: 'secrets#show'

end
