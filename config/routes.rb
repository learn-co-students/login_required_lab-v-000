Rails.application.routes.draw do

  get 'sessions/new', to: 'sessions#new'
  post 'sessions/create', to: 'sessions#create'
  get 'sessions/:name', to: 'sessions#show'
  delete 'sessions/destroy', to: 'sessions#destroy'
  get 'secrets/show', to: 'secrets#show'
end
