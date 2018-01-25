class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      render '/sessions/hello'
    end
  end

  def hello
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/new'
  end
end
