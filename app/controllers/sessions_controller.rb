class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:name].present?
  		session[:name] = params[:name]
  		redirect_to secrets_show_path
  	else
  		redirect_to sessions_new_path
  	end
  end

  def destroy
  	session.clear
  end

  def signup
  end
end
