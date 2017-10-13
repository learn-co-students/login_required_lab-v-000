class SessionsController < ApplicationController
  before_action :require_login, only: [:show]

  def new
    if current_user
      redirect_to '/welcome'
    end
  end

  def show
    
  end

  def create
    if params[:name] && params[:name].strip != ""
      session[:name] = params[:name]
      redirect_to '/welcome'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  private

  def require_login
    if !current_user
      redirect_to '/'
    end  
  end
end
