class SessionsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = current_user
  end

  def index
  end

  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if session[:name]
      session.clear
      redirect_to '/login'
    else
      redirect_to '/login'
    end
  end

end
