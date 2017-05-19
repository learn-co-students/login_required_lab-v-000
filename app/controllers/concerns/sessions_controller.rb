class SessionsController < ActionController::Base
	def new
	end

	def create

		if params[:name] == "" || params[:name].nil?
			redirect_to new_session_path
		else
			session[:name] = params[:name]
			redirect_to '/'
		end
	end

	def destroy
		session.delete(:name)
		redirect_to new_session_path
	end
end