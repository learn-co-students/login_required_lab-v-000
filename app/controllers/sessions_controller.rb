class SessionsController < ApplicationController

  def new
  end

  def create
    #redirects to login page if current_user is nil
    #login page here is the same as a new session
    if current_user.nil?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to greeting_path
    end
  end


end
