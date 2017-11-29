class SessionsController < ApplicationController
  def new
  end

  def create
    #raise params.inspect
    session[:name] = params[:name]
    #puts session[:name]
    if session[:name] == '' || session[:name].nil?
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def destroy
    #raise current_user.inspect
    session.delete :name
    redirect_to '/'#controller: 'application', action: 'hello'
  end
end
