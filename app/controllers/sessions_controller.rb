class SessionsController < ApplicationController

  def new
  end

  def create
    session[:name] = params[:name]
    if params[:name] == nil || session[:name] == ""
      redirect_to '/sessions/new'
    else
      redirect_to '/'
    end
  end


  def destroy
    if
    session.delete :name
    redirect_to '/logout'
  else
    redirect_to '/sessions/new'
  end
end

end
