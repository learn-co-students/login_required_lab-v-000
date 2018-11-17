class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name] 
      redirect_to "secrets/show"
    end
  end
  def destroy
    session.delete(:name)
    @current_user = nil
    redirect_to "/login"
  end
end
