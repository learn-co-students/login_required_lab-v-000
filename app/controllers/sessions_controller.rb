class SessionsController < ApplicationController
  def new
  end

  def create
    # redirects to login page if :name is nil
    # redirects to login page if :name is empty
    if params[:name].nil? || params[:name].empty?
      redirect_to action: 'new'
    else
      # sets session[:name] if :name was given
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    # leaves session[:name] nil if it was not set
    # binding.pry
    if current_user
      session.delete :name
    end
    redirect_to action: "create"
  end



end
