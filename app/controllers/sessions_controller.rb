class SessionsController < ApplicationController

  def new
  end

  def create
    if current_user
     @name = params[:name]
      redirect_to '/sessions/show'
    else
      session[:name] = params[:name]
      redirect_to "/sessions/new"
    end
  end

  def show
  end

  def destroy
    if session[:name] = nil
      redirect_to sessions_path
   else
     session[:name] = nil
     redirect_to sessions_path
    end
  end


end
