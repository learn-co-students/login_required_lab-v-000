class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to root_path and return
    end
    
    session[:name] = params[:name]

    redirect_to secrets_path
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
