class SessionsController < ApplicationController
  def new
  end
  # If a user fails to enter their name on the login page, they should be redirected there until they successfully do so.
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to root_path
    else
      session[:name] = params[:name]
      # Once logged in, a user should see the welcome page. This page should greet the user and link them to the secret page.
      render "application/welcome"
    end
  end

  def destroy
    if !current_user.nil?
      session.delete :name
      redirect_to root_path
    end
  end
end
