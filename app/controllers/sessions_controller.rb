class SessionsController < ApplicationController

  def create

      session[:name] = params[:name]


      redirect_to controller: 'sessions', action: 'new'

  end

  def new

  end


  def destroy

    session.delete :name


    redirect_to controller: 'application', action: 'hello'
  end

end
