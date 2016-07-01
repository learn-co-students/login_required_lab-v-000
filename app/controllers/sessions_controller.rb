class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to "/sessions/show"
    end
  end

  def show
    @current_user = current_user
  end

  def destroy
    reset_session if !session[:name].blank?
    redirect_to root_path
  end

end