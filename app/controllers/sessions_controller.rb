class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    if session.include? :name
      session.delete :name
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

end