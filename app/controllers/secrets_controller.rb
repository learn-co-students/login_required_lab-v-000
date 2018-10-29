class SecretsController < ApplicationController
	before_action :require_login

	def show
		#Nothing to do...
	end

private

	def require_login
    redirect_to new_session_path unless logged_in?
  end
end
