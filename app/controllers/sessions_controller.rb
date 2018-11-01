class SessionsController < ApplicationController

  def new
    # if current_user == session[:name]
    #   redirect_to
    # end
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to :controller => 'secrets', :action => 'show'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  # def create
  #   unless params[:name].nil? || params[:name] == ""
  #     session[:name] = params[:name]
  #     redirect_to "/"
  #   else
  #     redirect_to "/login"
  #   end
  # end

  def destroy
    session.destroy
    redirect_to controller: 'sessions', action: 'new'
  end
end
