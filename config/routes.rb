Rails.application.routes.draw do
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#new'
  # get '/sessions/:id', to: 'sessions#show'
  # get '/secrets', to: 'secrets#index'

  # get 'secrets/new'

  get '/sessions', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  root 'application#hello'
  get '/secrets', to: 'secrets#show'
  post '/sessions', to: 'sessions#destroy'

  #setting the root can be this simple ... application made a better choice for a place to welcome the user
  #  than a specific action with sessions or secrets controllers
  
  # get '/login' => 'sessions#new'
  
  #???I had gotten get '/login' right, but I needed the value of it to be to: 'sessions#new'
  #???here, 'secrets/new" is just a request and does not route to anywhere else or post on it's own

  
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'


  # root 'sessions/new' #(login page)
  # Got this error until fixed standard syntax here "ArgumentError: Missing :action key on routes definition, please check your routes.""
end
