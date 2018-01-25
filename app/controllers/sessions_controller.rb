class SessionsController < ApplicationController

  def new
  end

  def create
    name = params[:name]
    if !name || name.empty?
      redirect_to new_session_path
    else
      session[:name] = name
      redirect_to show_path
    end
  end

  def destroy
    session.delete :name
    render :new
  end
end