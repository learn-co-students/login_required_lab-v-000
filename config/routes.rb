Rails.application.routes.draw do

  get '/', to: redirect('/login')

  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  post '/logout' => "sessions#destroy"

  get 'secrets/show' => "secrets#show"

  # resources :secrets, only: [:show]

end
