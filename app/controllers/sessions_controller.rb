class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    if params[:name].blank?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      render :'secrets/show'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to '/sessions/new'
    end
  end
end