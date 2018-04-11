class SessionsController < ApplicationController
	
  def new
     render '/sessions/login'
  end

  		# redirect_to controller: 'application', action: 'hello'


  def create
  	if !params[:name] || params[:name].empty?
  		redirect_to controller:'sessions', action: 'new'
  	 # ADD FLASH NOTICE
    else
  		session[:name] = params[:name]	
      redirect_to controller: 'secrets', action: 'show'
  	end
  end

  def destroy
  	session.delete :name

  	redirect_to controller: 'application', action: 'hello'

  	# redirect_to controller:'sessions', action: 'new'

  end
end
