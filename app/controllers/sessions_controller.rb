class SessionsController < ApplicationController
	before_action :require_login
	skip_before_action :require_login, only: [:new, :create]

	def new

	end

	def create
		if params.include?(:name) && params[:name] != ""
			session[:name] = params[:name]
		else
			redirect_to new_session_path
		end
	end

	def destroy
		session[:name] = nil
		redirect_to new_session_path
	end

	def require_login
		redirect_to new_session_path unless session.include?(:name)
	end

end
