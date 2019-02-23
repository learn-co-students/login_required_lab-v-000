class SessionsController < ApplicationController

  def index
    redirect_to login_path
  end

  def new
  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to welcome_path
    end
  end

  def destroy
     if session[:name].nil?
     else
       session.delete(:name)
     end
     redirect_to login_path
  end

end
