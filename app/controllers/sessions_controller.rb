class SessionsController < ApplicationController
	def new
		redirect_to :login
	end

	def create
		if params[:name].nil? || params[:name].empty?
			redirect_to '/'
		elsif params[:name]
			session[:name] = params[:name]
			render :'sessions/logged_in'
		end
	end

	def destroy
		if current_user
			session.delete :name
		end
		redirect_to '/'
	end
end