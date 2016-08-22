class SessionsController < ApplicationController
  def index
    @user = current_user
    redirect_to login_path unless session.include? :name 
  end

  def create
    if params[:name].nil? || params[:name].empty? 
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
