class SessionsController < ApplicationController
	
  def new
<<<<<<< HEAD
  end

  def create
  	if !params[:name] || params[:name].empty?
  		redirect_to controller: 'sessions', action: 'new'
  	else
  		session[:name] = params[:name]
  		redirect_to controller: 'application', action: 'hello'
=======
    render '/sessions/login'
  end

  def create

  	if !params[:name] || params[:name].empty?
  		redirect_to controller:'sessions', action: 'new'
  	else
  		session[:name] = params[:name]	
      render 'welcome'
>>>>>>> 3836ac0b146aa713e099f8b64b5f5c82c71fec11
  	end
  end

  def destroy
  	session.delete :name
<<<<<<< HEAD
  	redirect_to controller: 'application', action: 'hello'
=======
  	redirect_to controller:'sessions', action: 'new'


>>>>>>> 3836ac0b146aa713e099f8b64b5f5c82c71fec11
  end
end
