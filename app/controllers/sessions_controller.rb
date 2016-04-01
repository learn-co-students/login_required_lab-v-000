class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    if params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    session[:name] = nil if current_user
    redirect_to new_session_path
  end

end