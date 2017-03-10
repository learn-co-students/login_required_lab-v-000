class SessionsController < ApplicationController


  def new

  end

  def create
    if params[:name] == "" || params[:name] == nil
    redirect_to '/login'
    else
    session[:name] = params[:name]
    render :'secrets/show'
    end
  end


  def destroy
    if session[:name]
      session.delete :name
      session[:name] = nil
      redirect_to '/login'
    else
      session[:name] = nil
      redirect_to '/login'
    end
  end
end
