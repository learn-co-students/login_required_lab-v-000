class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to root_path
    else
      session[:name] = params[:name]
      render :index
    end
  end

    def destroy
      session.clear
      redirect_to '/'
    end

    def new
    end
end
