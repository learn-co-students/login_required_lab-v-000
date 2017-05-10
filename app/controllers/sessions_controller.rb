class SessionsController < ApplicationController
  

  def new
  end

  def create
    redirect_to new_session_path unless session.include? :name
    session[:name] = params[:name]
  end

  def destroy
    if session.include? :name
      session.clear
      redirect_to new_session_path
    else
      redirect_to new_session_path
    end
  end

  private

  def require_login
    redirect_to new_session_path unless session.include? :name
  end
end
