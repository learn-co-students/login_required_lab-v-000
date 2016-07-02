class SessionsController < ApplicationController
  
  def index
  end

  def new
  end

  def create
  	if params[:name].nil? || params[:name].empty?
  		redirect_to new_session_path
  	else
  	  session[:name] = params[:name]
  	  redirect_to '/sessions/show'
  	end
  end

  def show
  end

  def destroy
  	session.clear
  	redirect_to new_session_path
  end


end
