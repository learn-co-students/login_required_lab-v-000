class SessionsController < ApplicationController

  def new
    #renders sessions/new.html.erb
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to "/"
    else
      session[:name] = params[:name]
      @username = session[:name]
      render :welcome
    end
  end

  def destroy
    session[:name] = nil if session[:name]
    redirect_to "/"
  end

end
