Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#new"

  get '/secret/show' => 'secrets#show'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/homepage' => 'application#hello'
  # get '/login' => 'sessions#new'
end
