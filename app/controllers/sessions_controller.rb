class SessionsController < ApplicationController
  def index
    redirect_to new_session_path unless current_user
  end

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/secrets/show'
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete :name if current_user
    redirect_to root_path
  end

end
