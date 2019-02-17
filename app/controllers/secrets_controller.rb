class SecretsController < ApplicationController
  
  def show
    if !!current_user
      render :show
    else
      redirect_to root_path
    end
  end
  
end