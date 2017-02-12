class SecretsController < ApplicationController

	def show
		if !session[:name].nil?
			render :secret
		else
			redirect_to root_path
		end
	end
end