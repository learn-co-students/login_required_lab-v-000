class SessionsController < ApplicationController

  def new
  end

  def show
  end

  def create
    if params[:name].blank?
      redirect_to root_path
    else
      session[:name] = params[:name]
      render :show
    end
  end

end
