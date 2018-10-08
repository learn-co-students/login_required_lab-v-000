class SessionsController < ApplicationController

  def create
    return redirect_to new_session_path if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    render :welcome
  end

  def destroy
    session.delete :name
    redirect_to new_session_path
  end
end
