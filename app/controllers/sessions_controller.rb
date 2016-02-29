class SessionsController < ApplicationController

	def new
	end

	def create
		if params[:name].nil? || params[:name].empty?
			redirect_to new_session_path 
		else
			sessions[:name] = params[:name]
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
