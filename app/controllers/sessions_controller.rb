class SessionsController < ApplicationController

  def index
  end

  def new
  end 

  def login
  end

  def create
    if params[:name].nil? || params[:name] == ''
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
