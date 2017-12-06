class SessionsController < ApplicationController

  def new
  end

  def create
   if params[:name] && !params[:name].empty?
     session[:name] = params[:name]
     redirect_to '/secret'
   else
    redirect_to '/login'
   end
 end

  def destroy
    session.clear
    redirect_to '/'
  end
end
