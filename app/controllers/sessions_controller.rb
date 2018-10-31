class SessionsController < ApplicationController

  def new
  end

  def create
    return redirect_to(controller: 'sessions', action: 'new') if
      !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def secret
  end

  def destroy
    if current_user
      session.delete :name
    end
    redirect_to controller: 'application', action: 'hello'
  end


end
