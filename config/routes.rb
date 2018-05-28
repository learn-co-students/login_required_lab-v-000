Rails.application.routes.draw do
  get 'secrets/show'

   resources :sessions, only: [:new, :create, :destroy]
   post 'logout' => 'sessions#destroy'
end
