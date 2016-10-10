require 'pry'
class SessionsController < ApplicationController

def index
end

def new
end

def create

  if params.include?(:name) && !params[:name].empty?
    session[:name] = params[:name]
    redirect_to welcome_path
  else
    redirect_to new_session_path
  end
end

def welcome
  @user = session[:name]
end

def current_user
  session[:name]
end

def destroy
  session.clear if !session[:name].nil?
  redirect_to new_session_path
end



end
