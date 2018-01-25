class SessionsController < ApplicationController
  
  def new
  end

  def create
   if params[:name].nil? || params[:name] == ""
      redirect_to sessions_new_path
    else
      current_user
      redirect_to secrets_show_path
    end
  end

  def destroy
    if !current_user.nil?
      session.clear
      redirect_to sessions_new_path
    else
      redirect_to sessions_new_path
    end
  end

end