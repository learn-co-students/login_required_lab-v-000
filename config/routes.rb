Rails.application.routes.draw do

  root to: 'sessions#new'
  post '/' => 'sessions#create'
  get 'secret' => 'secrets#show'

  get 'home' => 'sessions#index'

  post 'destroy' =>  'sessions#destroy'

end
