Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/show' => 'secrets#show'
  post '/create' => 'sessions#create'
  get '/new' => 'sessions#new'
  get '/home' => 'sessions#home'
  post '/destroy' => 'sessions#destroy'
end
