class SessionsController < ApplicationController
	def new
		render :welcome
	end

	def create
	  login(params)
	  if logged_in?
		  render :'application/welcome'
	  else
		  redirect_to '/'
	  end
    end

	def destroy
	  session.delete :name if logged_in?
	  redirect_to '/'
  end
end
