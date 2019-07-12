class SessionsController < ApplicationController
  def new
    #this renders the login page
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    if session[:name]
      session.destroy
      redirect_to root_path
    end
  end
end
