Rails.application.routes.draw do
  resources :sessions
  resources :secrets, only: [:new, :show]
  post '/logout' => 'sessions#destroy'
  root to: "sessions#new"
  get '/secret', :to => 'secrets#show', as: 'top_secret'

end
