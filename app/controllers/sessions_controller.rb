class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name if !session[:name].nil?
    redirect_to sessions_new_path
  end
end
