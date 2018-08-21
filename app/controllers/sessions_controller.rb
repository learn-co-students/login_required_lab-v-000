class SessionsController < ApplicationController
  def new
  end

  def show
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
      # redirect_to controller: 'sessions', action: 'new'
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to "/login"
    else
      session[:name] = nil
      redirect_to "/"
    end
  end
end
