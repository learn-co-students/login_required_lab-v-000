class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] &&  params[:name] != ""
      session[:name] = params[:name]
      redirect_to show_path
    else
      redirect_to sessions_new_path, :alert => "Enter a name for real"
    end
  end

  def destroy
    session.delete :name
    redirect_to sessions_new_path
  end
end
