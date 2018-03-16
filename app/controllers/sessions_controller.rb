class SessionsController < ApplicationController
before_action :require_name, only: [:create]
def new
end

def create
  session[:name] = params.require(:name)
  redirect_to home_path
end

def destroy
session.delete :name
redirect_to login_path
end

private
def require_name
  redirect_to login_path if [nil, ""].include?(params[:name])
end

end
