class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/new'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
  end

end
