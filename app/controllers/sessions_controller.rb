class SessionsController < ApplicationController
  def create
    if params[:name].blank?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end