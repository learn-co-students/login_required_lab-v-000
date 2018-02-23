class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank? || params[:name] == nil
      redirect_to '/'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end

end
