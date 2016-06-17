class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to application_index_path
    end
  end

  def destroy
    if current_user
      session.delete :name
    end
      redirect_to root_path
  end


end
