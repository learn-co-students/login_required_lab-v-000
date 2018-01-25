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
      render :welcome
    end

    def destroy
      session.delete("name") if !session[:name].nil?
      redirect_to root_path
    end
  end

end
