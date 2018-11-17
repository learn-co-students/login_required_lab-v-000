class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].nil? && !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/show'
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name unless session[:name].nil?
    redirect_to '/'
  end
end
