class SessionsController < ApplicationController

	def new
	end

	def create
		session[:name] = params[:name]
		if session[:name].nil? || session[:name].empty?
			redirect_to new_session_path 
		else
			redirect_to show_path
		end
	end

	def destroy
		if !current_user.nil?
			session[:name] = nil
		end
		redirect_to new_session_path
	end

end
