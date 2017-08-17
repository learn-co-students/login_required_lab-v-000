class SessionsController < ApplicationController

  def new

  end

  def create
    if !params[:name].nil? && params[:name] != ''
      session[:name] = params[:name]
      redirect_to '/show'
    else
      redirect_to '/'
    end
  end

  def destroy
    if session.include? :name
      session.delete :name
    end
    redirect_to '/'
  end

  private



end
