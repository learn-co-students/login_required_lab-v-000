class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def create
    if !params[:name] || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to :root
    end
  end

  def destroy
    session[:name] = nil
    redirect_to :root
  end

end
