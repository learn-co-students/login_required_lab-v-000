class SessionsController < ApplicationController

  def new
    render :login
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to  '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
