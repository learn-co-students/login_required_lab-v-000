Rails.application.routes.draw do
  root    'sessions#new'
  post    '/sessions',  to: 'sessions#create'
  post    '/logout', to: 'sessions#destroy'
  get     '/secrets', to: 'secrets#show'
end
