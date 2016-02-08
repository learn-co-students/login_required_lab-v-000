class SessionsController < ApplicationController

  def new
  end

  def create
   if !params[:name] || params[:name].empty?
     redirect_to new_session_path 
   else
    session[:name] = params[:name]
    redirect_to show_secret_path
   end
  end

  def destroy
    session.clear if current_user
    redirect_to new_session_path
  end
end