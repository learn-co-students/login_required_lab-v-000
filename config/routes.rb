Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions
  get '/', to: "sessions#new"
  post '/logout', to: "sessions#destroy"
  get '/secrets', to: "secrets#index"

end
