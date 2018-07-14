class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]
  
  def new
  end
  
  def create
    return redirect_to login_path if params[:name].blank?
    
    session[:name] = params[:name]
    redirect_to root_path
  end
  
  def destroy
    session.delete :name
    redirect_to root_path
  end
end