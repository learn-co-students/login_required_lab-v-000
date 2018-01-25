class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if !session[:name] || session[:name] == ""
      redirect_to '/'
    else
      render :welcome
    end
  end

  def destroy
    if !session[:name]
      session[:name] == nil
    else
      session.delete :name
    end
    redirect_to '/'
  end
end
