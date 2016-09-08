class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
    # NOTE: login page
    redirect_to root_path if current_user
  end

  def create
    if params[:name].present?
      current_user
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end
end
