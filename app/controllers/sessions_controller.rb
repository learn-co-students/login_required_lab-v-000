class SessionsController < ApplicationController
  before_action :logged_in?
  skip_before_action :logged_in?, only: [:create, :destroy]
  
  
  def new
  end

  
  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to root_path
    end
  end


  def show
  end


  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to root_path
  end
end
