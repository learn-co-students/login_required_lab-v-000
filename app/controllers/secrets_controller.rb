class SecretsController < ApplicationController
	before_action :require_login

	def show
		#should redirect to login if not logged in
	end

	def index
	end

	def create
	end

	private

	def require_login
		redirect_to new_session_path unless session[:name]
	end

end

