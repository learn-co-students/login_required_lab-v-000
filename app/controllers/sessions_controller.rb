class SessionsController < ApplicationController
 
  def new 
    @user = User.new
  end
  
  def create 
    if !!params[:name] && !params[:name].empty?
      session[:name] = params[:name]
    else
      redirect_to login_path 
    end  
  end
  
  def destroy
    session.clear
  end
  
end
