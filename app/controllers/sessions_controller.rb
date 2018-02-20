class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to home_path
    end
  end

  def home
  end

  def destroy
    session.delete :name
    redirect_to new_session_path
  end
end
