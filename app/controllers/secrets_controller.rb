class SecretsController < ApplicationController
	before_filter :logged_in?, only: [:show, :secret]

	def show
		@user = current_user
	end

	def secret
	end

	private

	def logged_in?
		redirect_to new_session_path unless current_user
	end

end
