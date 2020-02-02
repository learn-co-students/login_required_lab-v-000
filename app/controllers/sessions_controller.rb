class SessionsController < ApplicationController
    def new
    end
  

#  create
    #  redirects to login page if :name is nil
    #  redirects to login page if :name is empty
    #  sets session[:name] if :name was given
    def create
      return redirect_to(controller: 'sessions',
                         action: 'new') if !params[:name] || params[:name].empty?
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end
  
# destroy
    # leaves session[:name] nil if it was not set
    # clears session[:name] if it was set
    def destroy
      session.delete :name
      redirect_to controller: 'application', action: 'hello'
    end

end
