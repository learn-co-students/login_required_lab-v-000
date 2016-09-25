class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path_path
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.delete(:name) if session[:name]
    redirect_to controller: 'application', action: 'hello'
  end

end
