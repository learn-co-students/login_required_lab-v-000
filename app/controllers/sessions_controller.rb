class SessionsController < ApplicationController

  def new
  end


  def create
    #raise params.inspect
    unless params[:name].present?
      redirect_to '/new'
    else
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def show
    if current_user
      @username = session[:name]
    else
      redirect_to '/new'
    end
  end

  def destroy
    unless session[:name].present?
      redirect_to '/new'
    else
      session.destroy
      redirect_to '/new'
    end
  end


end
