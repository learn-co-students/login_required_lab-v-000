class SessionsController < ApplicationController
	before_action :require_login
	skip_before_action :require_login, only: [:new, :create]

	def new
	end

	def create
		if params[:name] && !params[:name].empty?
			session[:name] = params[:name]
			redirect_to root_path
		else
			redirect_to login_path
		end
	end

	def destroy
		session.delete :name
		redirect_to root_path
	end
end
