class SessionsController < ApplicationController

	def new
		render :new
	end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/sessions/new'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
    	session.delete :name
        redirect_to '/'
    end
end