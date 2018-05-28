class SessionsController < ApplicationController
	# before_action :require_login

	def new
	end

	def create
		return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
		session[:name] = params[:name]
		redirect_to controller: 'application', action: 'hello'
	end

	def destroy
		session.delete :name
		redirect_to controller: 'application', action: 'hello'
	# private

	# def require_login
	# 	returen head(:forbidden) unless session.include? :user_id
	# end

end
end
