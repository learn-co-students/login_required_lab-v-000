class SessionsController < ApplicationController
  def new
    if session[:name].present? 
      # I added this; it redirects to the welcome page if you're already logged in.
      redirect_to root_path
    end
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to root_path
    else
      # render :new # This works, but the tests are expecting a redirect.
      redirect_to login_path
    end
  end

  def destroy
    if current_user
      session.delete :name
    end
    
    redirect_to login_path
  end
end