Rails.application.routes.draw do

 get '/', to: "sessions#new"
 post '/login', to: "sessions#create"
 get '/secrets/show', to: "secrets#show"
 post '/logout', to: "sessions#destroy"

end
