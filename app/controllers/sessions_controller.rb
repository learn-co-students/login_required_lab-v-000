class SessionsController < ApplicationController
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/sessions'
    end
  end
  def destroy
    if session[:name].nil?
    else
      reset_session
    end
    redirect_to '/'
  end
end
