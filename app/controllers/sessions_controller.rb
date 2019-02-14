class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] != nil && params[:name] != ""
        session[:name] = params[:name]
        redirect_to 'application/index'
    else
        redirect_to '/login'
    end
  end

   def destroy
    session.delete :name
    redirect_to '/login'
  end

end