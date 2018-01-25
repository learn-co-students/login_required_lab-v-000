class SessionsController < ApplicationController
  before_action :require_login, only: [:show]

  def new

  end

  def show
    
  end

  def create
    if params[:name] && params[:name].strip != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
