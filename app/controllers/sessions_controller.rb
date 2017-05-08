class SessionsController < ApplicationController
	
	def new
	end

	def create
		if params[:name].present?
			session[:name] = params[:name]
			redirect_to secrets_show_path
		else
			redirect_to login_path
		end
	end

	def show
		@username = session[:name]
	end

	def destroy
		session[:name] = nil if current_user.present?
		redirect_to login_path
	end

end
