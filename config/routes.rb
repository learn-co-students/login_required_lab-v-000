Rails.application.routes.draw do

  get 'sessions/new', to: 'sessions#new'
  post 'sessions/new', to: 'sessions#create'
  get 'secrets/:id', to: 'secrets#show'

end
