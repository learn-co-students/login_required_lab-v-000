class SecretsController < ApplicationController

  def show
    if current_user
      @secret = session[:name]
    else
      redirect_to '/new'
    end
  end
end
