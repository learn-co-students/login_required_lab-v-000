class SessionsController < ApplicationController

	def new

	end

	def create
		if !params[:name].blank?
			session[:name] = params[:name]
			redirect_to session_path(session[:name])
		else
			redirect_to new_session_path
		end
	end

	def show
		@name = params[:id]
	end

	def destroy
		session.clear
		redirect_to login_path
	end
end