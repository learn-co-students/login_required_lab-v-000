class SessionsController < ApplicationController
  def new
  end

  def create
        # if there is no name in params, or it is blank, redirect to the login page
        if !params[:name] || params[:name] == ''
          redirect_to '/sessions/new'
        else  
        # if there is a valid name, set the session to that value, and redirect to the root page.
          session[:name] = params[:name]
          redirect_to '/'
        end
  end

  def destroy
    session.delete :name
    redirect_to '/sessions/new'
    # redirect_to controller: 'application', action: 'hello'
  end

end
