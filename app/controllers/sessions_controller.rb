class SessionsController < ApplicationController
  def new
  end

  def create
    if params["name"] == nil || params["name"].empty?
      redirect_to login_path
    else
      session[:name] = params["name"]
      redirect_to secret_path
    end
  end

  def destroy
    if session[:name] == nil
    else
      session.delete :name
    end
    redirect_to login_path
  end
end
