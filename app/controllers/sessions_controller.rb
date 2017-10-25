class SessionsController < ApplicationController
  before_action :require_login

  def new
    if current_user.present?
      render :index
    else
      render :new
    end
  end

  def create
    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
    session.destroy
    redirect_to root_path
  end


end
