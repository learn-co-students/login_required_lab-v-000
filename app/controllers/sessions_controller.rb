class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].blank?
      redirect_to '/'
    else
      redirect_to '/welcome'
    end
  end

  def show
  end

  def destroy
    session.delete :name
  end

end
