Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-12-authentication/login-required-lab
  #
  # new code start
  get 'secrets/new'
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/secret' => 'secrets#show'
  # new code end

end
