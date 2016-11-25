Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'sessions#show'
  get '/rabbit-hole', to: 'secrets#show'
  post '/logout', to: 'sessions#destroy'

end
