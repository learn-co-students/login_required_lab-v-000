class SessionsController < ApplicationController
 

  def new
  end

  def show
    # the sessions page that allows you access to secrets page
  end

  def create
    if params[:name].nil? || params[:name].empty? 
      redirect_to "/", alert: "Must enter a name"
    else
      session[:name] = params[:name]
      @user = session[:name]
      render 'sessions/show'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end

end
