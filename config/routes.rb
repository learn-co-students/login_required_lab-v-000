Rails.application.routes.draw do
 get '/show' => 'secrets#show'
 get '/new' => 'sessions#new'
 get '/create' => 'sessions#create'
 get '/home' => 'sessions#home'
 post '/destroy' => 'sessions#destroy'
end
