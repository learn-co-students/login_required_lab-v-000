class SessionsController < ApplicationController
  def create
    if params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to '/'
  end

end
