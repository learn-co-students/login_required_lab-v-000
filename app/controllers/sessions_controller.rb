class SessionsController < ApplicationController


  def new
  end

  def create
    if !params[:name] || params[:name].blank?
      redirect_to controller: 'sessions', action: 'new'
    elsif params[:name]
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end

end
