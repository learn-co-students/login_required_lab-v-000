class SessionsController < ApplicationController
  def new

  end


  def create
    params[:name] ||= ""
    if params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    session.clear if session[:name]
    redirect_to new_session_path

  end
end
