class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to :show
    elsif !current_user
      redirect_to new_session_path
    end
  end

  def destroy
    if current_user
      session[:name] = nil
    end
  end

end
