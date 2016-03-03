class SessionsController < ApplicationController

	def new
	end

	def create
		if session[:name].nil?
			redirect_to new_sessions_path
		end
		session[:name] = params[:name]
	end

	def destroy
		session[:name] = nil
		redirect_to new_sessions_path
	end

end
