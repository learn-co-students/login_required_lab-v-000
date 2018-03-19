class SessionsController < ApplicationController

  def new
	if session[:name].empty?
	  
	  render :new
	else
	  
	  redirect_to secret_path
	end
  end

  def create
  	if params[:name].present?
	  session[:name] = params[:name]
  	
  	  redirect_to secret_path
  	else
    	
	  redirect_to login_path
	end
  end

  def destroy
  	if session[:name].present?
  		session.clear
  		redirect_to login_path
  	else
  		redirect_to login_path
  	end
  end


end
