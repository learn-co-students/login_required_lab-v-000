class SecretsController < ApplicationController

	before_action :current_user, only: [:create]

	def show
		unless current_user.present?
			redirect_to '/login'
		end
	end

end
