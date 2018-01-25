class SessionsController < ApplicationController

  def new

  end
  
  def create
    if params[:name].blank?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      render 'secrets/show'
    end
    
  end
  
  def destroy
    session.delete :name
    render :new
  end
  
end
