class SecretsController < ApplicationController
  def new
  end

  def show
    if current_user != nil
      render :new
    else
      redirect_to '/sessions/new'
    end
  end
end
