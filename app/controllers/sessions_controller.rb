class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    if params[:name].nil? || params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to sessions_path
    end
  end

  def index
    @user = current_user
  end

  def destroy
    unless session[:name].nil?
      session.clear
    end
    redirect_to new_session_path
  end

  private
  def require_login
    redirect_to new_session_path unless session.include? :name
  end
end