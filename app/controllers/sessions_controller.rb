class SessionsController < ApplicationController
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/sessions/show'
    end
  end

  def new
  end

  def show
  end

  def destroy
    if !!current_user
      session[:name] = nil
    end
    redirect_to '/sessions/new'
  end
end
