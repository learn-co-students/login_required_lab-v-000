
class SessionsController < ApplicationController
 

  def new

  end

  def create
   if params[:name].nil? || params[:name].empty?
     redirect_to 'http://test.host/new'
   else
     session[:name] = params[:name]
     redirect_to '/sessions/create'
   end
  end

  def destroy
    session.clear
    redirect_to '/sessions/destroy'
  end
end
