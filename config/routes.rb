Rails.application.routes.draw do
  #get 'sessions/new'
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  post '/secret' => 'secrets#show'
  get '/secret' => 'secrets#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
