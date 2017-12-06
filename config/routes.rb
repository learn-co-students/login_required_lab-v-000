Rails.application.routes.draw do
  get 'secrets/new' 
  get 'secrets/show'
  get 'sessions/new'
  post 'sessions/create'
  post '/logout' => 'sessions#destroy'



end
