class SecretsController < ApplicationController
  def show
    if @user = current_user
      render :show
    else 
      redirect_to login_path
    end
  end
end