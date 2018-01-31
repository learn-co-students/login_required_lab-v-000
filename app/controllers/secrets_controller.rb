class SecretsController < ApplicationController
before_action :current_user

def show
  if current_user
    render '/secrets/show'
  else
    redirect_to login_path
  end
end

end
