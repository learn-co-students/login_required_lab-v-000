class SessionsController < ApplicationController

  def new
  end

  def show

  end

  def create
  	if !params[:name] || params[:name].empty?
     redirect_to(controller: 'sessions',
                       action: 'new') 
 	else
    	session[:name] = params[:name]
    	redirect_to controller: 'sessions', action: 'show'
	end
  end

  def destroy
  	if current_user	
  		session.delete :name
  	end
  	redirect_to login_path
  end

end
