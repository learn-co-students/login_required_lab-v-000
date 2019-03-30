Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions

  # get '/login', to: 'sessions#new'
  # resources :secrets
  delete '/sessions' => "sessions#destroy"
  get '/secrets' => "secrets#show"

end
