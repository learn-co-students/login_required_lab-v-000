class SessionsController < ApplicationController
    
  def create
    if current_user.blank?
    redirect_to '/sessions/new'
    elsif current_user
      redirect_to "/application/index"
    end
  end
  
  def destroy
    if session[:name] != nil
    session.delete(:name)
  else
    session[:name] == nil
    end
    redirect_to root_path
  end
end

