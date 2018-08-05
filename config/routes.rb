Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # root 'welcome#index'
  root 'secrets#index'

  get '/login', to: 'sessions#new' #login page
  post '/login', to: 'sessions#create'

  get '/secret', to: 'secrets#show' #secret show page
  post '/destroy', to: 'sessions#destroy' #destroy action called

end
