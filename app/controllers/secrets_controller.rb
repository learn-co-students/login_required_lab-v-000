class SecretsController < ApplicationController
  before_action :require_login


  def show
  end


  private
  def require_login
    unless current_user
      flash[:error] = "Please log in"
      redirect_to "/sessions/new"
    end
  end


end
