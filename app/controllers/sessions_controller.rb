class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    name = params[:name]
    if name.nil? || name == ''
      redirect_to sessions_new_path
    else
      session[:name] = name
      redirect_to sessions_welcome_path
    end
  end

  def destroy
    session.clear
    redirect_to sessions_new_path
  end
end
