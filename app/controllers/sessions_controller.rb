class SessionsController < ApplicationController

	def new 

	end 

	def create 
		# binding.pry
		if params[:name].present?
			session[:name] = params[:name]
			redirect_to homepage_path
		else 
			redirect_to '/'
		end 
	end 

	def destroy
  	
		if session[:name].present?
			session.delete :name
			
		end 
		redirect_to '/'
	end 


end
