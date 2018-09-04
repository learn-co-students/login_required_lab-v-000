class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = user_params
      redirect_to '/show'
    end
  end

  def destroy
    session.clear
    redirect_to '/login'
  end

  private

  def user_params
    params.require(:name)
  end

end
