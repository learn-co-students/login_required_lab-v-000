class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to secrets_path
    end
  end

  def create
    if  params[:name].present? && params[:name] != ""
      session[:name] = params[:name]
      redirect_to secrets_show_path
    else
      redirect_to new_session_path
    end
  end

  def show
    @name = current_user.name
  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
    if session[:name].present?
      session.clear
    end
    redirect_to new_session_path
	end


end
