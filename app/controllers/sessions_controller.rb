class SessionsController < ApplicationController

	def new
	end

	def create
   		if params[:name].nil? || params[:name].empty?
     		redirect_to '/'
    	else
     		session[:name] = params[:name]
    	end
  	end

  	def destroy
  		session.clear if session[:name]
  	end
end