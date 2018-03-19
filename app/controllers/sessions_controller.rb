class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if :name == nil
      redirect_to '/login'
    else
      redirect_to '/new'
    end
  end

  def destroy
    session.delete :name unless :name == nil
    redirect_to 'new'
  end
end
