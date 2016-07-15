class SessionsController < ApplicationController

  def new
    # session[:name] = 'Nick'
    # @current_user = current_user
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to 'secrets#show'
    else 
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to new_session_path
  end

end
