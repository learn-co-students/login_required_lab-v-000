Rails.application.routes.draw do
  
  get '/secrets' => 'secrets#show'
  get '/new' => 'sessions#new'
  post '/create' => 'sessions#create'
  post '/delete' => 'sessions#destroy'

end
