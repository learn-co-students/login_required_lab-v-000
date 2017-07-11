Rails.application.routes.draw do
  get 'secrets' => 'secrets#show', as: "secret"
  get 'new' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
