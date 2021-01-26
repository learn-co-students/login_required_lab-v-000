class SessionsController < ApplicationController
  def create
    if valid_login?
      session[:name] = params[:name]
      redirect_to("/")
    else
      redirect_to(login_path)
    end
  end

  def destroy
    session.delete(:name)
    redirect_to(login_path)
  end

  def valid_login?
    params[:name] != nil && params[:name] != ''
  end
end