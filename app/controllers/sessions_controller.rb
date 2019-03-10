class SessionsController < ApplicationController

  def create 
    session[:name] = params[:name]
      if !session[:name].nil? && !session[:name].empty?
        redirect_to secrets_path
      else
        redirect_to login_path
      end
  end

  def destroy 
    session[:name] = nil
    redirect_to login_path
  end
end
