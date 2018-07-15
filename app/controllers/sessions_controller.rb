require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create
    if !!params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/sessions/show'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    if !!session[:name] && !session[:name].empty?
      session.delete :name
    end
    redirect_to '/sessions/new'
  end


end
