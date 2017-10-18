class SecretsController < ApplicationController
	before_action :require_login
	
	def show
		render :'super_secret'
	end
end

