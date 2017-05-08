require 'pry'
class SessionsController < ApplicationController
  def index 
    user = current_user
  end 
  
  def new 
  end 
  
  def create 
    user = user_params
    if user[:name].nil? || user[:name].empty?
      redirect_to sessions_new_path 
    else 
      session[:name] = user[:name]
      redirect_to sessions_index_path
    end 
  end 

  def destroy 
    if !session[:name].nil?
      session[:name] = nil 
    end 

    redirect_to sessions_index_path
  end 
end 
