class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && params[:name].present?
      session[:name] = params[:name]
      @user = current_user
      render :welcome
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    render :new
  end
end
