class SecretsController < ApplicationController
  helper_method :current_user

  def show
    if !session[:name]
      redirect_to :login
    end
  end

end
