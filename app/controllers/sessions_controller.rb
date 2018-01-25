class SessionsController < ApplicationController
  def create
    name = params[:name]
    if name.nil? || name.empty?
      redirect_to new_session_path
    else
      session[:name] = name
      redirect_to '/'
    end
  end

  def destroy
    session.clear
    redirect_to '/new'
  end

  def index
    redirect_to '/new' unless current_user
  end

  def new
  end
end