Rails.application.routes.draw do
  root 'sessions#new'
  get '/secrets', to: 'secrets#show'
  delete 'sessions', to: 'sessions#destroy'
  resources :sessions, only: %i[new create index]
end
