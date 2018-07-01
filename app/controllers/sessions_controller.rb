class SessionsController < ApplicationController

  def create
    session[:name] = params[:name]
    # if session[:name]

    if session[:name] == nil || session[:name].empty?
    redirect_to :login

else
      redirect_to :controller => :application, :action => 'hello'
    end
  end
  # end

  def destroy

    session.delete :name
    redirect_to :login
  end
end
