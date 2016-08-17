class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]

    if current_user.empty? || current_user.nil?
      redirect_to login_path
    else
      redirect_to welcome_path
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

  def current_user
    session[:name] ||= ""
  end

end
