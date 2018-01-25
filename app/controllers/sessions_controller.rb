class SessionsController < ApplicationController
  def new
    if !current_user
      redirect_to '/new'
    end
  end

  def create
    if !current_user
      redirect_to '/new'
    end
    session[:name] = params[:name]
  end

  def destroy
    session.delete :name
  end
end
