class SessionsController < ApplicationController

 	def new

 	end

 	def create
 		if params[:name].blank?
 			redirect_to "/sessions/new"
 		else
 			session[:name] = params[:name]
 			@name = params[:name]
 			redirect_to "/sessions/#{@name}"
 		end
 	end

 	def show
 		@name = params[:name]
 	end

 	def logout

 	end

 	def destroy
 		if !session[:name].blank?
 			session.clear
 			redirect_to sessions_new_path
 		else
 			redirect_to sessions_new_path
 		end
 	end

 	private

 	def session_params
 		params.permit(:name)
 	end
 end 
