Rails.application.routes.draw do
  get 'secrets', to: 'secrets#show'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
