class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank? || params[:name].nil?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/show'
    end
  end

  def destroy
    session.delete :name if session[:name]
    redirect_to '/'
  end

  #def show
  #end

  private

    def current_user
      session[:name]
    end
end
