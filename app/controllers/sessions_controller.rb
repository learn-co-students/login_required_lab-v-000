class SessionsController < ApplicationController
  def new
    @user = User.new 
  end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to 'login'
  end

  def destroy
    session.delete :name
    redirect_to 'login'
  end
end
