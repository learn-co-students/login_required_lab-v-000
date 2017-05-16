class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      render '/secrets/show'
    end
  end

  def destroy
    sesssion.delete :name
    redirect_to '/'
  end
end
