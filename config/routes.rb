Rails.application.routes.draw do
  get "secrets/new"
  get "secrets/show"

  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"

end
