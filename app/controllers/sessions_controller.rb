require 'pry'

class SessionsController < ApplicationController

  def new

  end


  def create
      # params[:name]
      # if params name is empty redirect to login
      if  !params[:name] || params[:name].empty?
      #  binding.pry
        redirect_to controller: 'sessions', action: 'new'
      else
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'see'
      end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'sessions', action: 'new'
  end

end
