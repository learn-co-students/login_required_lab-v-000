class SessionsController < ApplicationController

def new
end

def create
  if params[:name] == '' || params[:name] == nil
    redirect_to action: "new"
  else
    session[:name] = params[:name]
    redirect_to action: "show"
  end
end

def show
end


def destroy
  session.delete :name
end






end
