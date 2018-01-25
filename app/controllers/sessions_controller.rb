class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].blank?
      redirect_to :login
    else
      current_user
      redirect_to "/welcome"
    end
  end

  def destroy
    session.destroy unless current_user.nil?
    redirect_to "/login"
  end

  def welcome
    @user_name = current_user
  end
end
