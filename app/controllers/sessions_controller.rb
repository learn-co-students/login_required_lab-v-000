class SessionsController < ApplicationController
  
  def index
    if !!current_user
      #some code and then render :show
    else
      redirect_to new_session_path
    end
  end
  
  def new
    
  end
  
  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to root_url
    else
      redirect_to new_session_path
    end
  end
  
  def destroy
    if session.include? :name
      session.delete :name
      redirect_to new_session_path
    else
      redirect_to new_session_path
    end
  end
  
  
end
