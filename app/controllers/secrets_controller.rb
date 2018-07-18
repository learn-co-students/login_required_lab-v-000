class SecretsController < ApplicationController

  def show
    if !logged_in?
      redirect_to '/login'
    else
      render 'show'
    end
  end
end
