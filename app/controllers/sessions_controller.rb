class SessionsController < ApplicationController

  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      flash[:alert] = "You must input a name to login."
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to 'sessions/show'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  def show
    
  end

end
