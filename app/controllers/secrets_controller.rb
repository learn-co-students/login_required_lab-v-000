class SecretsController < ApplicationController
  def show
    if current_user
      render "secret"
    else
      redirect_to '/login'
    end
  end
end
