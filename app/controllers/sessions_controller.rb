class SessionsController < ApplicationController
  skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      render :welcome
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to login_path
  end
end
