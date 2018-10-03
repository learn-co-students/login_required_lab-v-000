class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if !current_user.nil?
      session.delete :name
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

end
