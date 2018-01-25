class SessionsController < ApplicationController
  before_action :require_login, only: [:show]

  def new
  end

  def show
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to root_path
    else
      @user = session[:name] = params[:name]
      render sessions_show_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
