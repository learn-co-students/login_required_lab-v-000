class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?    # create redirects to login page if :name is nil, empty
      redirect_to login_path
    else
      session[:name] = params[:name] # create sets session[:name] if :name was given
      redirect_to controller: 'application', action: 'welcome'    
    end
  end

  def destroy
    session.delete :name
  end
end
