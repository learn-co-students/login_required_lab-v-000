class SessionsController < ApplicationController

  def new
    redirect_to "/welcome" if current_user
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to "/"
    else
      session[:name] = params[:name]
      redirect_to "/welcome"
    end
  end

  def destroy
    session.delete :name
    redirect_to :root
  end


end
