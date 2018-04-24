class SessionsController < ApplicationController
  def new; end

  def create
    if params[:name].nil? || params[:name].blank?
      redirect_to root_url
    else
      session[:name] = params[:name]
      redirect_to sessions_url
    end
  end

  def index
    @name = session[:name]
  end

  def destroy
    session[:name] = nil
    redirect_to new_session_url
  end
end
