class SessionsController < ApplicationController

	def new
	end

	def user
		if session[:name]
			@user = session[:name]
		else
			redirect_to new_session_path
		end
	end

	def create
		if params[:name].nil?
			redirect_to new_session_path
		elsif params[:name].empty?
			redirect_to new_session_path
		else
			session[:name] = params[:name]
			redirect_to user_path
		end
	end

	def destroy
		session.delete(:name)
		redirect_to root_path
	end
end
