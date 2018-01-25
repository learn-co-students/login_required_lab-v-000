class SessionsController < ApplicationController
  def create
  	if !params[:name] == '' || !params[:name].blank?
  		session[:name] = params[:name]
  		redirect_to secrets_show_path
  	else
  		redirect_to sessions_new_path
  	end
  end



  def new
  end

  def destroy
  	if session[:name].nil?
  		redirect_to sessions_new_path
  	else
  		session[:name] = nil
  		redirect_to sessions_new_path
  	end
  end
end
