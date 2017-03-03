class SecretsController < ApplicationController

	before_action :check_login
	def show


	end


	private

	def check_login
		redirect_to login_path unless current_user
	end


end