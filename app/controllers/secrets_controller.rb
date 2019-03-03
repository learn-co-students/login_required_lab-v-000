class SecretsController < ApplicationController

	before_action :validate_user

	def index
	end

	def show

	end

	private

		def validate_user
			redirect_to login_path if session[:name].nil?
		end

end
