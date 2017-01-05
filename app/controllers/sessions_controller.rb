class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if current_user.nil? || current_user.empty?
      redirect_to '/'
    else
      redirect_to '/home'
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
