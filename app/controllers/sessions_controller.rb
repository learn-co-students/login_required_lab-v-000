class SessionsController < ApplicationController
  def new
    render '/login'
  end

  def create
    if params[:name].nil? || params[:name]==''
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/home'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
