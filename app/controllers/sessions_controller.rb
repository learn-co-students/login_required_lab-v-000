class SessionsController < ApplicationController

  def new
    render :'login'
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear if current_user
    redirect_to root_path
  end

end
