class SecretsController < ApplicationController

  def show
    if current_user != nil
      render 'secrets/show'
    else
      redirect_to root_path
    end
  end
end
