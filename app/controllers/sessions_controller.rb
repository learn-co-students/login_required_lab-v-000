class SessionsController < ApplicationController



  def create
    if !params[:name] || params[:name].empty?
       redirect_to '/sessions/new'
     else
       session[:name] = params[:name]
       redirect_to '/'
     end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
