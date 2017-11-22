class SessionsController < ApplicationController



	def new

	end

	def create
		
		unless params[:name].present?

			redirect_to '/login'
		else
			
			session[:name] = params[:name]
			
			redirect_to '/'
		end
	end

	def destroy
		if current_user.present?
			session.delete(:name)
		end

		redirect_to '/'
	end


	
end
