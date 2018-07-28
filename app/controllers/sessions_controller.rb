class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name] == ""
      flash[:alert] = "Uh oh! You need to enter  name in order to login."
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to root_url
    end
  end

  def show
    @user = current_user
  end

  def destroy
    if !session.include? :name
      session[:name] = nil
    else
      session.delete :name
      session[:name] = nil
    end
    redirect_to new_session_path
  end
end
