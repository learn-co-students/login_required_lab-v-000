Rails.application.routes.draw do
  root 'sessions#new'
  get '/show' => 'secrets#show'
  get '/welcome' => 'secrets#welcome'
  post '/create' => 'sessions#create'
  post '/destroy' => 'sessions#destroy'
end
