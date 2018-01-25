class SessionsController < ApplicationController
  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/new'
    end
  end
  def new
  end
  def destroy
    if session[:name].present?
      session[:name] = nil
    end
    redirect_to '/'
  end
end
