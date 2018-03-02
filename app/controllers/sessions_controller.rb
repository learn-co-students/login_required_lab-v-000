class SessionsController < ApplicationController

  before_action :require_login, only: [:homepage]

  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to homepage_path
    end
  end

  def homepage
    @user = session[:name]
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

  private
 
  def require_login
    return head(:forbidden) unless session.include? :name   
  end

end
