class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name] 
      redirect_to sessions_path
    end
  end

  def destroy
    session.clear if current_user
    redirect_to new_session_path
  end

  def new
  end

  def show
  end

end
