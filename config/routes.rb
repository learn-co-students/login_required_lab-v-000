Rails.application.routes.draw do

  root 'application#hello'
  get '/secret' => 'secrets#show'
  post '/logout' => 'sessions#destroy'
  resources :sessions, only: [:new, :create]
end
