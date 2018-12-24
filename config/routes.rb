Rails.application.routes.draw do
	get '/', to: 'sessions#new'
    get '/login', to: 'sessions#new'
    post '/login', to:'sessions#create'
    post '/logout', to: 'sessions#destroy'
	get '/secrets', to: 'secrets#show'
end
