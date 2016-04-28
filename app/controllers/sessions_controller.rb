class SessionsController < ApplicationController
  def create
    if !!params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.clear unless session[:name].nil?
    redirect_to new_session_path
  end
end
