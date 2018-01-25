class SessionsController < ApplicationController
  def login
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/secrets'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
