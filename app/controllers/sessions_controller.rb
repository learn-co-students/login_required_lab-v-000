class SessionsController < ApplicationController
	before_action :logged_in?, only: [:show, :destroy]
	
	def new
	end
	
	def create
		if params[:name].nil? || params[:name].empty?
			redirect_to '/'
		else
			session[:name] = params[:name]
			redirect_to session_path(current_user)
		end
	end
	
	def show
		@username = params[:id]
	end
	
	def destroy
		session.clear
		redirect_to '/'
	end
	
end
