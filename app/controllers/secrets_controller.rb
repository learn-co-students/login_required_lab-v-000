class SecretsController < ActionController::Base

	def show
		if !session.has_key?(:name)
			redirect_to new_session_path
		end
	end
end