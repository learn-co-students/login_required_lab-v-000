class SessionsController < ApplicationController

	def create
		if params[:name] == nil || params[:name] == ""
			redirect_to :action => 'new'
		else
			session[:name] = params[:name]
		end
	end

	def new
	end

	def destroy
		if session[:name] != nil
			session[:name] = nil
		end
	end

end