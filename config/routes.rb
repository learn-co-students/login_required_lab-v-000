Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'sessions#new'
  root '/homepage'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/secret' => 'secret#favorite_color'
end
