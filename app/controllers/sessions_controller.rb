class SessionsController < ApplicationController

	def new
	end

	def create
  	if session[:name] #logged_in
  		redirect_to '/login'
  	else #not logged in
  		if params[:name].nil? || params[:name] == ""
	  		redirect_to '/login'
	  	else
	  		session[:name] = params[:name]
  			redirect_to secrets_path
	  	end
  	end
	end

	def destroy
  	session.delete(:name)
  	redirect_to '/'
	end 
end
