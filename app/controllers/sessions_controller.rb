class SessionsController < ApplicationController

  def new

  end

  def create
   
    if params[:name] == nil
      flash[:message] = "Need a username"
      redirect_to '/'
    elsif params[:name] == ""
       flash[:message] = "Need a username"
      redirect_to '/'
    else
     session[:name] = params[:name]
     
      redirect_to '/secrets/show'
    end

  end

  def show

  end

  def destroy
    binding.pry
    session.clear if session[:name] != nil
    redirect_to '/'

  end




end