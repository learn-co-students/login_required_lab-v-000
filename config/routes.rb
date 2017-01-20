Rails.application.routes.draw do

  get 'sessions/new', to: 'sessions#new'
  post 'sessions/new', to: 'sessions#create'
  get 'secrets', to: 'secrets#show'
  delete 'sessions/destroy', to: 'sessions#destroy'

end
