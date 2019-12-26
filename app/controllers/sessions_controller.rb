class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to new_session_path
      flash[:message] = "Your name cannot be blank."
    else
      session[:name] = params[:name]
      redirect_to sessions_path
    end
  end

  def destroy
    session.delete :name
    redirect_to new_session_path
  end


end
