class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  # GETS /sessions/new  - Login page
  def new
  end

  # POST /session/create - Login
  def create
    if params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  # POST /sesssions/destroy - Logout
  def destroy
    session[:name] = nil if current_user
    redirect_to new_session_path
  end

end