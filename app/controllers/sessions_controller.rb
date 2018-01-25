class SessionsController < ApplicationController

def new

end

def create
  if !params[:name] || params[:name].empty?
    redirect_to new_session_path
  else
    session[:name] = params[:name]
    redirect_to secret_page_path
  end
end

def destroy
  session[:name] = nil if session[:name]
  redirect_to new_session_path
end


 

end