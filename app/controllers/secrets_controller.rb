class SecretsController < ApplicationController

  before_action :require_login

  def show

  end

  private

  def require_login
    if session[:name]
      render :show
    else
      redirect_to new_path
    end
  end

end
