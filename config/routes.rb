Rails.application.routes.draw do
  get '/secrets', to: 'secrets#show'

  get '/', to: 'sessions#show'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  post '/logout', to: 'sessions#destroy'
end
