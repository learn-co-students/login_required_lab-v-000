class SessionsController < ApplicationController
	before_action :require_name, only: [:create]

	def new

	end
	
	def create
		session[:name] = params[:name].strip
		redirect_to secrets_path
	end

	def destroy
		session.delete :name
		redirect_to new_session_path
	end

private

  def require_name
    redirect_to new_session_path unless !!params[:name] && params[:name].strip.length > 0
  end
end
