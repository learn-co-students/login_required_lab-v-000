class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to hello_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
