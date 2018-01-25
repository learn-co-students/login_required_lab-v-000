class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      @user = current_user
      render 'welcome'
    end
  end

  def destroy
    session.delete :name
    render 'new'
  end
end
