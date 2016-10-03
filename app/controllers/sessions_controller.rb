class SessionsController < ApplicationController

	def new
		
	end

	def create
		if params[:name].nil? || params[:name].blank?
			redirect_to :login
		else
			session[:name] = params[:name]
			redirect_to :welcome
		end
	end

	def welcome
		
	end

	def destroy
		session.destroy if !session[:name].nil?
	end

end