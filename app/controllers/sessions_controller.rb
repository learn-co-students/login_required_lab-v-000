class SessionsController < ApplicationController
  def new
  end

  def show
    @logged_in = !!current_user
  end

  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to(login_path)
    else
      session[:name] = params[:name]
      redirect_to(secret_path)
    end
  end

  def destroy
    session.delete :name
    redirect_to(login_path)
  end
end
