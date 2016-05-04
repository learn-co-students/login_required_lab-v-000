class SessionsController < ApplicationController
  def create
    if !params[:name] == '' || !params[:name].blank?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to new_session_path
    end
  end

  def new
  end

  def destroy
    if !session[:name].nil?
      session[:name] = nil
      redirect_to new_session_path
    else
      redirect_to new_session_path
    end
  end

end