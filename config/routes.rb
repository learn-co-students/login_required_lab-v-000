Rails.application.routes.draw do
  get 'secrets/new'

#Step 1) Visit the root of the app and be redirected to a login page.
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
