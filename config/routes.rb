Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # this appeared in the previous lab as well, the related action redirects to sessions#new
  root 'application#hello'
  get '/login', to: 'sessions#new'
  get '/home', to: 'sessions#home'
  get '/secrets', to: 'secrets#show'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
end
