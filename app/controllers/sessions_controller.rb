class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_url
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.destroy
    redirect_to :new_session
  end
end
