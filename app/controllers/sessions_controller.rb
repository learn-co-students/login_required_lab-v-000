class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to
    else
      redirect_to '/'
    end
  end

  def destroy
    if current_user
      session.delete(:name)
    end
    redirect_to '/'
  end
end
