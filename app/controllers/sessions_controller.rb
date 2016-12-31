class SessionsController < ApplicationController

  def new
    current_user
  end

  def create
    unless params[:name].nil? || params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      require_login
    end
  end

  def destroy
      session.delete :name unless session[:name].nil?
      require_login
  end
end
