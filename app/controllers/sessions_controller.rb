class SessionsController < ApplicationController

  def new
    render :login
  end

  def create
    return redirect_to '/login' if params[:name].nil? or params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/welcome'
  end

  def destroy
    session.delete :name
    redirect_to '/welcome'
  end

end
