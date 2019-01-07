Rails.application.routes.draw do
  resource :sessions
  resource :secrets

  root 'application#new'
end
