Rails.application.routes.draw do
  root 'application#index'

  resources :sessions

  get '/secret' => 'secrets#show'
  # get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
