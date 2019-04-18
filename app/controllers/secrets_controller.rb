class SecretsController < ApplicationController
  # before_action :require_login

  def show
    if !session[:name]
      redirect_to login_path
    end
  end

end
