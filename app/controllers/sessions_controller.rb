class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:name] == '' || params[:name] == nil
  		redirect_to sessions_new_path
  	else
  		session[:name] = params[:name]
  		redirect_to secrets_show_path
  	end
  end

  def destroy
    if current_user
      session.delete :name
    end
    redirect_to sessions_new_path
  end
end