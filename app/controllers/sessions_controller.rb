require 'pry'

class SessionsController < ApplicationController 
  
  def new 
  end 
  
  def create 
    #raise session.inspect
    return redirect_to controller: 'sessions', action: 'new' if !params[:name] || params[:name] == "" #if session[:name] == nil
    #raise session.inspect
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end 
  
  def destroy 
    #binding.pry
    
    if session[:name]
      session.delete :name 
      redirect_to controller: 'sessions', action: 'new'
    else 
      redirect_to controller: 'sessions', action: 'new'
    end 
  end 
    
end 