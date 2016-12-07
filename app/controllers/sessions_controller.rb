class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    if name.nil? || name.empty?
      redirect_to '/'
    else
      session[:name] = name
      redirect_to 'secrets/index'
    end
  end

  def destroy
    session.clear
    redirect_to '/'    
  end
end
