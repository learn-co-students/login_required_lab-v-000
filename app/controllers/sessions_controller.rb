require 'pry'

class SessionsController < ApplicationController

def login

end

def create
  if !params[:name] || params[:name].empty?
    redirect_to '/login'
  else 
    session[:name] = params[:name]
    redirect_to '/application/home'
  end
end 

def destroy
  if !session[:name].nil?
    session.delete :name
    redirect_to controller: 'application', action: 'home'
  else
    redirect_to controller: 'application', action: 'home'
  end
end 


end