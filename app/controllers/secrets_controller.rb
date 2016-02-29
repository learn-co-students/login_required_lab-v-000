class SecretsController < ApplicationController
	before_filter :logged_in?, only: [:show, :secret]

	def show
		@user = current_user
	end

	def secret
	end

	private

	def logged_in?
		if current_user.nil? || current_user.empty?
			redirect_to new_session_path
		else
			current_user
		end
	end

end
