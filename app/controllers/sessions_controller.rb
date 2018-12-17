class SessionsController < ApplicationController
	def new
	end

	def create
	  login
	  if logged_in?
		  render :welcome
	  else
		  redirect_to '/'
	  end
    end

	def destroy
	  session.delete :name if logged_in?
	  redirect_to '/'
  end
end
