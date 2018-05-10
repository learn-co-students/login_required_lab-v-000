class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
    else
      return redirect_to login_path
    end
    redirect_to root_path
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
