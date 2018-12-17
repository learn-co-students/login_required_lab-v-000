class SessionsController < ApplicationController
	def new
	end

	def create
	#sets session[:name] if [:name] is given
   	#redirects to login page is [:name] is empty or nil
	  login
	  if !logged_in?
		  redirect_to '/'
	  else
		  render :welcome
	  end
    end


	def destroy
	  #leaves session name nil is not set
  	  #clears session name if set
	  session.delete :name if logged_in?
	  redirect_to '/'
  end
end
