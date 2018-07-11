Rails.application.routes.draw do
  resource :secrets, only: [:index, :show]
  get 'sessions/new'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
