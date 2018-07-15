class SessionsController < ApplicationController

  def create
    if params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to session_path
    end
  end

  def new
    binding.pry
  end

  def destroy
    session.delete :name
    redirect_to new_session_path
  end

end
