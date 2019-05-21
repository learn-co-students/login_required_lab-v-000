Rails.application.routes.draw do
  get '/show' => 'secrets#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
