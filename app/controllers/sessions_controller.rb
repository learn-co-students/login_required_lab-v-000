class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/secrets'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private
  def log_out
    session.delete(:name)
    @current_user = nil
  end
end
