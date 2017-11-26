class SessionsController < ApplicationController
  def new
  end

  def create
    #byebug
    session[:name] = params[:name]
    if session[:name].present?
      redirect_to secrets_path
    else
      redirect_to sessions_new_path
    end

    # elsif params[:name].nil? || params[:name].empty?
    #     redirect_to login_path
    # else params[:name]
    #   session[:name] = params[:name]
    #   redirect_to root_path
    # end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
