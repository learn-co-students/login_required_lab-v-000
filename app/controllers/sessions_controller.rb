class SessionsController < ApplicationController

	before_action :require_valid_name
	skip_before_action :require_valid_name, only:[:destroy]


	def new
	end

	def create
      session[:name] = params[:name]
      render 'secrets/show'
    end

    def destroy
      session.delete(:name) if session.include? :name
      redirect_to new_session_path
    end




	

	private
	  def require_valid_name
	  	redirect_to new_session_path if (params[:name].nil? || params[:name] == "")
	end

end