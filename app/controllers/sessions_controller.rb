class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]
  skip_before_action :verify_authenticity_token

  def index
    @user = current_user
  end

  def new
  end

  def create
    if !params[:name] || params[:name].blank?
      flash[:error] = "You must be logged in to view this page."
      redirect_to login_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if !session[:name] || session[:name] == nil
      redirect_to login_path
    else
      session.clear
      redirect_to login_path
    end
  end

end
