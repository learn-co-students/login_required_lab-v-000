class SessionsController < ApplicationController
    before_action :require_login, only: [:show]
  def new
  end

  def show
    # the sessions page that allows you access to secrets page
    # must be logged in
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
    session[:name] = nil
    redirect_to root_path
  end

end
