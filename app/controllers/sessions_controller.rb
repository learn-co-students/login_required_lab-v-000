class SessionsController < ApplicationController
  #before_action :require_login
  #skip_before_action :require_login, only: [:new]


  def index
    require_login
  end

  def new

  end

   def create
     session[:name] = params[:name]
     if params[:name].nil? || params[:name].empty?
       redirect_to sessions_new_path
     else
       redirect_to :root
     end
   end


   def destroy
     session.delete :name
     redirect_to :new
   end


end
