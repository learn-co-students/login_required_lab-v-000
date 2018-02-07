Rails.application.routes.draw do
  get '/show' => 'secrets#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/' => 'application#index'
  post '/destroy' => 'sessions#destroy'
end
