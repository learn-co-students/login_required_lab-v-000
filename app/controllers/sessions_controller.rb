class SessionsController < ApplicationController

  def new
    logout
  end

  def create
    if params[:name].blank?
      redirect_to '/sessions/new' if params[:name].blank?
    else
      session[:name] = params[:name] if params.include? :name
      @name = session[:name]
      render 'welcome'
    end
  end

  def destroy
    logout
    redirect_to '/sessions/new'
  end

private
  def logout
    if session.include? :name
      session.delete(:name) if !session[:name].nil?
    end
  end
end
