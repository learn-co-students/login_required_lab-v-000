class SessionsController < ApplicationController
  before_action :require_login
  helper_method :current_user

  def create
    if !params[:name] || params[:name] == ""
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to welcome_path
    end
  end
end
