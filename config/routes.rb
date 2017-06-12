Rails.application.routes.draw do
  get "/secret" => 'secrets#show'
  get "/login" => 'sessions#new'
  post "/logout" => 'sessions#destroy'
  post "/login" => 'sessions#create'
  root 'application#index'
end
