class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    unless current_user.blank?
      session.delete(:name)
    end
    redirect_to login_path
  end
end
