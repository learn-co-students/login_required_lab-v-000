class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  private

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to view this page!"
      redirect_to login_path
    end
  end

end
