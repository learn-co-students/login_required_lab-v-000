class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name].nil? || session[:name].empty?
      redirect_to '/'
    else

      redirect_to '/sessions/index'
    end
  end

  def index
    @name = current_user
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to '/'
  end
end