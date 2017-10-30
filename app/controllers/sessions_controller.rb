class SessionsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def new
  end

  def create
    return redirect_to login_path if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to root_path
  end

  def destroy
    if session[:name]
      session.delete :name
    end
    redirect_to root_path
  end
end
