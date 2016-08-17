
class SecretsController < ApplicationController
	
	def show
		if logged_in?
			
		else
			redirect_to new_session_path
		end
		
	end
	
end