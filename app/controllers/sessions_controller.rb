class SessionsController < ApplicationController
 

  def index
    @current_user = current_user
  end

  def new
    
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to root_path , alert:"Please enter username to continue"
    else
        session[:name] = params[:name]
        redirect_to sessions_path
    end
  end

  def destroy
    session.clear if current_user
    redirect_to root_path
  end

end
