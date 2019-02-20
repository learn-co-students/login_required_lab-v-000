class SecretsController < ApplicationController
	def show
		if !logged_in?
			redirect_to '/sessions/new'
		end
	end
end
