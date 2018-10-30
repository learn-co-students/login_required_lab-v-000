class SessionsController < ApplicationController
  def new
  end

  def create
    # raise params.inspect
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    # raise params.inspect
    session.delete(:name) if session[:name].present?

    redirect_to '/'
  end

end
