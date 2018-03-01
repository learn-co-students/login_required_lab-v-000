class SessionsController < ApplicationController
  def new

  end

  def create
    # binding.pry

    if params[:name] == nil || params[:name].empty?
      redirect_to new_path
    else
      session[:name] = params[:name]
      redirect_to '/sessions/home'
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end
end
