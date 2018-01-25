Rails.application.routes.draw do
  get '/', to: 'sessions#new', as: 'root'
  
  post '/destroy', to: 'sessions#destroy'
  
  post '/login', to: 'sessions#create'

  get '/home', to: 'application#home'

  get '/secret', to: 'secrets#show'
end
