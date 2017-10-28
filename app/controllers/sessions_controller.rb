class SessionsController < ApplicationController
	before_action :require_login, only: [:show]

  def new
  end

  def show
  end

  def create
  	if !params[:name] || params[:name].empty?
     redirect_to '/'
 	else
    	session[:name] = params[:name]
    	redirect_to(greeting_path)
	end
  end

  def destroy
  	session.delete :name if current_user
  	redirect_to login_path
  end


end
