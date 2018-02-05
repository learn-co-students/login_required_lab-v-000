class SessionsController < ApplicationController

  def new

  end

  def create
    return redirect_to login_path if params[:name].nil? || params[:name].empty?
    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
    session.delete :name if current_user
    redirect_to root_path
  end
end
