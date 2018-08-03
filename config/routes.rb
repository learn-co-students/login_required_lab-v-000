Rails.application.routes.draw do
 
  root 'sessions#new'
  
  resource :secrets, only: [:show] 
  resource :sessions

end
