Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#new'
  get '/sessions/:id', to: 'sessions#show'
  get '/secrets', to: 'secrets#index'

  # root 'sessions/new' #(login page)
  # Got this error until fixed standard syntax here "ArgumentError: Missing :action key on routes definition, please check your routes.""
end
