class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to "/secrets/#{session[:name]}"
    end
  end

  def destroy
    session.delete :name if !nil
    redirect_to '/login'
  end

end
