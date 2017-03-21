class SecretsController < ApplicationController
	before_action :logged_in?


	def show
			
	end

	private

		def logged_in?
			if !!current_user
  			@username = current_user
  		else
  			redirect_to controller: 'sessions', action: 'new'
  		end
		end
end
