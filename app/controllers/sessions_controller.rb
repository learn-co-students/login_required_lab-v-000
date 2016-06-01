class SessionsController < ApplicationController
  def create
    if !!current_user
      redirect_to secret_path
    else
      session[:name] = params[:name]
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path
  end

  def new
  end

  def show
  end

end
