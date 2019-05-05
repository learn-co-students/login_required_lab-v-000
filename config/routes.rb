Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#get '/sessions/login', to: 'sessions/new', as: 'login'
root 'application#welcome'
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
post '/logout' => 'sessions#destroy'
get 'show' => 'secrets#show'

#get '/patients/:id', to: 'patients#show', as: 'patient'
end
