class SessionsController < ApplicationController

  def index
    if current_user.blank?
      redirect_to new_session_path
    else
      @username = current_user
    end
  end

  def new

  end

  def create
    session[:name] = params[:name]
    if current_user.blank?
      redirect_to new_session_path
    else
      redirect_to sessions_path
    end
  end

  def destroy
    unless current_user.blank?
      session[:name] = nil
    end
    redirect_to new_session_path
  end
end
