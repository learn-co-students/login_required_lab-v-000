class SessionsController < ApplicationController
  def new
    if !current_user.blank?
      redirect_to homepage_path, alert: "You are already logged in."
    end
  end

  def create
    if params[:name].blank?
      redirect_to root_path, alert: "You must type in a name."
    else
      session[:name] = params[:name]
      redirect_to homepage_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to root_path
  end

end
