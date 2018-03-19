class SessionsController < ApplicationController

  def new
  end
# SessionsController create redirects to login page if :name is nil
# SessionsController create redirects to login page if :name is empty
# SessionsController create sets session[:name] if :name was given
  def create

  end

# SessionsController destroy leaves session[:name] nil if it was not set
# SessionsController destroy clears session[:name] if it was set
  def destroy
    session.delete :name
  end

end
