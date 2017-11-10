class SessionsController < ApplicationController

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to new_session_path
    end
  end

  def destroy
    if session[:name].blank?
      session[:name] == nil
      redirect_to new_session_path
    else
      session.delete :name
      redirect_to new_session_path
    end
  end

end
