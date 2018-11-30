class SessionsController < ApplicationController

  def new

  end

  def create
    if sess_params[:name].nil? || sess_params[:name]==''
      redirect_to new_session_path
    else
      session[:name] = sess_params[:name]
      redirect_to root_path
    end

  end

  def destroy
    session.delete :name if !session[:name].nil?
    redirect_to root_path
  end

  private

  def sess_params
    params.permit(:name)
  end
end
