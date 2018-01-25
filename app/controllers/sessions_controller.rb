class SessionsController < ApplicationController
  def new
  end

  def show
    if session[:name] != nil
      @user = session[:name]
      redirect_to 'secrets/new'
    else
      redirect_to '/sessions/new'
    end
  end

  def create
    if params[:name] != nil && params[:name] != ''
      session[:name] = params[:name]
      redirect_to '/secrets/new'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    if session[:name] != nil
      session.delete :name
    end
    redirect_to '/sessions/new'
  end

end
