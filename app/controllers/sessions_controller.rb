class SessionsController < ApplicationController
  def new
  end

  def create 
  	if !params[:name] || params[:name] == ""
  		redirect_to login_path 
  	else 
  		session[:name] = params[:name]
  		redirect_to secrets_show_path(current_user)
  	end		
  end 

  def destroy 
  	if current_user 
  		session.delete(:name)
  		redirect_to login_path
  	else 
  	 	redirect_to login_path
  	end
  end	 	 	
end
