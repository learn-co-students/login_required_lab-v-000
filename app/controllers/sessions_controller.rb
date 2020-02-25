class SessionsController < ApplicationController
    def new
    end
  
#Step 2) If a user fails to enter their name on the login page, 
# ...they should be redirected there until they successfully do so.

#  create
    #  redirects to login page if :name is nil
    #  redirects to login page if :name is empty
    #  sets session[:name] if :name was given

    def create
      #user is redirected to views/sessions/new if :name is nil or empty:
      return redirect_to(controller: 'sessions',
                         action: 'new') if !params[:name] || params[:name].empty?
      session[:name] = params[:name]

      #user is redirected to views/application/hello
      redirect_to controller: 'application', action: 'hello'
    end
  
# destroy
    # leaves session[:name] nil if it was not set 
    # clears session[:name] if it was set *deletes session*
    def destroy
      session.delete :name
      redirect_to controller: 'application', action: 'hello'
    end

end
