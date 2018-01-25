Rails.application.routes.draw do
  root 'sessions#new'
  post '/' => 'sessions#create'
  resources :sessions, only: [:index, :create, :new]
  post '/destroy' => 'sessions#destroy'
  get '/secret' => 'secrets#show'
end
