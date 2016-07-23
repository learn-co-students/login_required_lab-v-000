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
      session[:name].clear
      session[:name] = nil
      redirect_to '/login'
    else
      session[:name] = nil
      redirect_to '/login' 
    end
  end
end


#make the homepage login
#form post to create, where it will set the username to the session
#goes to index user home page which says hi username and a link to secret page
#secret view checks if they are logged in and if displays a secret, if not redirect to login
#make a helper method for loggedin?
