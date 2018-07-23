class SessionsController < ApplicationController

def new
end

def login
  if params[:name]
    session[:name] = params[:name]
    redirect_to controller: 'session', action: 'welcome'

  else
    redirect_to controller: 'sessions', action: 'login'
  end
end

def create
  #byebug
  if params[:name] == nil || params[:name] == ""
    redirect_to controller: 'sessions', action: 'new'
else
  session[:name] = params[:name]
  redirect_to controller: "sessions", action: "new"
end
end

def welome
end

def destroy
  if session[:name] != nil
  session.delete :name
end
  redirect_to :action => "new"
end


end
