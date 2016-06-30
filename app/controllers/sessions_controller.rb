class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/secrets'
    end
  end

  def destroy
    if session[:name].nil?
      redirect_to '/login'
    else
      reset_session
      redirect_to '/login'
    end
  end
end
