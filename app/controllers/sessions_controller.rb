class SessionsController < ApplicationController

  def new
  end

  def create
    if current_user.nil?

      render 'new'
    else
      current_user
      binding.pry

      redirect_to '/welcome'
    end
  end

  private

  def current_user
    session[:name] = params[:name]
  end

  def session_params
    params.require(:session).permit(:name)
  end
end
