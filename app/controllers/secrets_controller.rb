class SecretsController < ApplicationController
	before_action :logged_in?

	def show
	  if logged_in?
		render :show
	  else
	  	redirect_to '/sessions/new'
	  end
	end

end