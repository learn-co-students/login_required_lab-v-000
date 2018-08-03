Rails.application.routes.draw do
 
  get 'sessions/new'

  get 'sessions/show'

  get 'sessions/destroy'
  
  post 'sessions', to: 'sessions#create'

  get 'secrets/show'
  
  root 'sessions#new'

end
