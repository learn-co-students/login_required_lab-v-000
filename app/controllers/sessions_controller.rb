class SessionsController < ApplicationController

  def new
    render '/login'
  end

  def create
    if current_user.blank? && params[:name].blank?
      redirect_to login_path
    elsif !params[:name].blank?
      session[:name] = params[:name]
      redirect_to show_path
    end
  end

  def destroy
    if current_user != nil
      session[:name] = nil
    end
    redirect_to login_path
  end

end
