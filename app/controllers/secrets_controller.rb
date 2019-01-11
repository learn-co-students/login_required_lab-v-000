class SecretsController < ApplicationController
  before_action :require_login

  def show
  end
  
  def require_login
    if current_user
      render 'secrets/show'
    else
      redirect_to '/login'
    end
  end 
end