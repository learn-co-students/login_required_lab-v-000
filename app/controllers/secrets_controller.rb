class SecretsController < ApplicationController
  
  def show
    if !current_user
      redirect_to '/login'
    else
      render 'secrets/show'
    end
  end
end