class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to new_secret_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to new_session_path
  end

end
