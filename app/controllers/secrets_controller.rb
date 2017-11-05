class SecretsController < ApplicationController
	before_action :require_login
   
    def show
    	@username = session[:name]
    end

  private

  def require_login
    unless current_user
      flash[:error] = "User needs to be logged in."
      redirect_to sessions_new_path
    end
  end
  
end