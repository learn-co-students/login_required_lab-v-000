Rails.application.routes.draw do
  get 'sessions/new'

  root 'sessions#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/logout' => 'sessions#destroy'

  match 'secrets/show' => 'secrets#show', :via => :get

end
