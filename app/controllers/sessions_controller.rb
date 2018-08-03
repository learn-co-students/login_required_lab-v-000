class SessionsController < ApplicationController
  
  def new

  end

  def create
    session[:name] = params[:name] 
    redirect_to sessions_show_path
  end

  def show
    
  end

  def destroy
    session[:name] = nil 
    redirect_to root_path
  end
  
  # private 
  
  # def require_login
  #   return head(:forbidden) unless session.include? :name 
  # end
  
  
end
