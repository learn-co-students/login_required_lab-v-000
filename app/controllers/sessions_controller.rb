class SessionsController < ApplicationController

  def new
    render 'login'
  end

  def create
    session[:name] = params[:name]

    if session[:name] && session[:name] != ""
      render 'secrets/show'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'

  end

  private

  def current_user
    session[:name]
  end

end
