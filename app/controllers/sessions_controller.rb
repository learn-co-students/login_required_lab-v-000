class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new # implicitly renders login form - app/views/sessions/new.html.erb
  end

  def create # logging the user in
    if !params[:name] || params[:name].empty?
      flash[:message] = "You must enter a username to log in."
      redirect_to login_path # same as redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name] # log in the user
      redirect_to root_path # same as redirect_to controller: 'application', action: 'welcome'
    end
  end

  def destroy # logging the user out
    session.delete(:name)
    flash[:message] = "Goodbye for now!"
    redirect_to login_path
  end
end

  # def create
  #  return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
  #  session[:name] = params[:name]
  #  redirect_to controller: 'application', action: 'welcome'
  # end

# When I add raise params.inspect in #create method body and submit login form,
# params has a key "name" that points to whatever the user entered in form field
