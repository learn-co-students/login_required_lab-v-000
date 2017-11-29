class SessionsController < ApplicationController
  before_action :logged_in?, only: [:index, :welcome, :destroy]

  def index
  end

  def new
  end

  def create
    # byebug
    if !params[:name].blank?
      # byebug
      session[:name] = params[:name]
      redirect_to sessions_welcome_path
    else
      redirect_to sessions_login_path
    end
  end

  def welcome
    # byebug
    @user = current_user
  end

  def destroy
    # byebug
    session.delete :name
    redirect_to root_path
  end

end
