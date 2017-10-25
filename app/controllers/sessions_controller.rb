class SessionsController < ApplicationController

  def new
    if current_user != nil
      render :index
    else
      render :new
    end
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to sessions_path
    end
  end

  def destroy
    session.destroy
    redirect_to login_path
  end

end
