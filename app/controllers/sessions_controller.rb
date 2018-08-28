require 'pry'

class SessionsController < ApplicationController

  def show
    @user = current_user
  end

  def new
  end

  def create
    if !params[:name] || params[:name] == ''
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/homepage'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end


end
