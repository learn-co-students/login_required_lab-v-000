# https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-12-authentication/login-required-lab
# Build out the SessionsController.
# new code start
class SessionsController < ApplicationController

  def new
  end

  def create
   return redirect_to(controller: 'sessions',action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

  def destroy
     session.delete :name
     redirect_to controller: 'application', action: 'hello'
   end
end
# new code end
