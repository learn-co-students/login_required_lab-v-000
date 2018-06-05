class SessionsController < ApplicationController

  def new
  end

  def create
    #redirects to login page if current_user is nil
    #login page here is the same as a new session
    #binding.pry
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to greeting_path
    end
  end

  def index
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end


end
