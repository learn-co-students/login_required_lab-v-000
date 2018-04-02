class SessionsController < ApplicationController
  def new

  end

  def show
    @user = session[:name]
  end

  def create
    if params[:name] && !params[:name].blank?
      session[:name] = params[:name]
      redirect_to sessions_path(session[:name])
    else
      redirect_to new_sessions_path
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to sessions_path
  end

end
