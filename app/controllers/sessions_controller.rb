class SessionsController < ApplicationController
  # before_action :require_login, only: [:create]

  def new
  end

  def create
    if params[:name].blank?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to secrets_show_path
    end
  end

  def destroy
    session.delete :name
  end
end
