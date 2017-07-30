class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    unless name.nil? || name.empty?
      session[:name] = name
      redirect_to secret_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
