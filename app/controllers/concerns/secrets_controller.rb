class SecretsController < ApplicationController

	def show
		if !current_user
			redirect_to '/login'
		else
			render :show
		end
	end


	
end