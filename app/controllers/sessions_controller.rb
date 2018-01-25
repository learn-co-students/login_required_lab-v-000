class SessionsController < ApplicationController

	def index
		redirect_to '/login'
	end

	def new
	
	end

	def create
		if params["name"].nil? || params["name"].empty?
			redirect_to '/login'
		else
			session[:name] = params["name"]
			redirect_to '/secret'
		end
	end

	def destroy
		session[:name] = nil
		redirect_to '/'
	end

end