Rails.application.routes.draw do
  get 'secrets/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  #Visit the root of the app and be redirected to a login page.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/welcome' => 'sessions#show'
  post '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
