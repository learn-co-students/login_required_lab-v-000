class SecretsController < ApplicationController
	before_action :logged_in?
	
	def show
		@secret = "secret message"
	end
	
	
	
end
