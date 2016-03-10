class SessionsController < ApplicationController


  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to "/"
    else
      session[:name] = params[:name]
      redirect_to show_path
    end
  end

  def destroy
    if current_user.nil?
      redirect_to "/"
    else
      session[:name] = nil
      redirect_to "/"
    end
  end
end

 
