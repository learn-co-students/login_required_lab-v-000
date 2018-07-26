Rails.application.routes.draw do
  get '/secrets/show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  root  'application#hello'
end
