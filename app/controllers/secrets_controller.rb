class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  def welcome
    @user = current_user
  end

  private

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to view this page"
      redirect_to '/login'
    end
  end
end
