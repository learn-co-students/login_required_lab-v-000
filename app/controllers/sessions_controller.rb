class SessionsController < ApplicationController

  def home
    if current_user.nil?
      redirect_to login_path
    else
      render 'home'
    end
  end

  def new
    render 'login'
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to login_path
    else
      session[:name] ||= params[:name]
      redirect_to root_path
    end
  end

  def destroy
    if !current_user.nil?
      session[:name] = nil
    end
    redirect_to login_path
  end


end
