Rails.application.routes.draw do

  root 'secrets#index'

  get 'sessions/new'
  post 'sessions/create'
  get 'secrets/show'

  post 'sessions/destroy'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

end
