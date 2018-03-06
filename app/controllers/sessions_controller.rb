class SessionsController < ApplicationController
	
  def new
    render '/sessions/login'
  end

  def create

  	if !params[:name] || params[:name].empty?
  		redirect_to controller:'sessions', action: 'new'
  	else
  		session[:name] = params[:name]	
      render 'welcome'
  	end
  end

  def destroy
  	session.delete :name
  	redirect_to controller:'sessions', action: 'new'


  end
end
