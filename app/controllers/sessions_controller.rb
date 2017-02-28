class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      set_current_user(params[:name])
      redirect_to secret_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
