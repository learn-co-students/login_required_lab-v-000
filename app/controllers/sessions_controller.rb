class SessionsController < ApplicationController

  skip_before_action :login_required, only: [:new, :create]

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/home'
    else
      redirect_to '/'
    end
  end

  def show
    @name = session[:name]
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
