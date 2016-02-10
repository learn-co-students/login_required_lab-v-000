class SessionsController < ApplicationController

	def new

	end

	def create
		redirect_to '/sessions/new' unless (params[:name] && params[:name]!='')
		session[:name]=params[:name]
	end

	def destroy
		session[:name]=nil
		redirect_to '/'
	end

end
