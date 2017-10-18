class SessionsController < ApplicationController
	def new
	end

	def create
		if params[:name].nil? || params[:name].empty?
			redirect_to login_path
		elsif params[:name]
			session[:name] = params[:name]
			render :'application/welcome'
		end
	end

	def destroy
		if current_user
			session.delete :name
		end
		redirect_to '/'
	end
end