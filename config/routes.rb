Rails.application.routes.draw do
  
  root 'session#new'

  resources :sessions, only: [:create, :new]

  get 'secrets/show', to: 'secrets#show'

  delete 'sessions/destroy', to: 'sessions#destroy'

end
