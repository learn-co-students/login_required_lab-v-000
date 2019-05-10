Rails.application.routes.draw do
  #get 'secrets/new'
  #resources :secrets
  root 'application#hello'
  get '/secret' => 'secrets#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
