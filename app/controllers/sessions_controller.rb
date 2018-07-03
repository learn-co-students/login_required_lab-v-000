class SessionsController < ApplicationController

	def new

	end

	def create
		if params[:name] != "" && !params[:name].nil?
			session[:name] = params[:name]
			redirect_to root_path
		else
			redirect_to login_path
		end
	end

	def destroy
		if !!current_user
			session.delete :name
		else
			session[:name] = nil
		end
	end

end