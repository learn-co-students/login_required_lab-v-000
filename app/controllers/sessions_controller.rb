
class SessionsController < ApplicationController

	before_action :current_user, only: [:create]

	def new
		render :create
	end

	def create
		if params[:name].nil? || params[:name] == ''
			redirect_to '/'
		end
	end

	def show
		render :user
	end

	def logout 
		render	:destroy
	end

	def destroy
		session[:name] = nil
	end

end