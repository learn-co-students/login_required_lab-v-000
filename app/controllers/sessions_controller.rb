class SessionsController < ApplicationController
  def create
    if params[:name].blank? || !params[:name]
      redirect_to login_url
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
    redirect_to login_url
  end
end