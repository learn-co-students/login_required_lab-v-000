class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].blank?
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def show
  end

  def current_user

  end
end
