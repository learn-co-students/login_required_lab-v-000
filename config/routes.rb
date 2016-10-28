Rails.application.routes.draw do
  root    'sessions#new'
  post    '/sessions',  to: 'sessions#create'
  delete    '/logout', to: 'sessions#destroy'
  get     '/secrets', to: 'secrets#show'
end
