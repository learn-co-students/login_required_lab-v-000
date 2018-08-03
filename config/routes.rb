Rails.application.routes.draw do
 
  root 'sessions#new'
  
  resource :secrets, only: [:show] 
  resource :sessions, only: [:new, :create, :show, :destroy]

end
