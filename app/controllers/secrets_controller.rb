class SecretsController < ApplicationController
	before_action :require_login

	def index
		#redirect_to '/secrets/show'
	end

	def show
	end

	def create
	end

	private

	def require_login
      redirect_to new_session_path unless session.include? :name
  end
end
