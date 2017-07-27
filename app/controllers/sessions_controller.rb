class SessionsController < ApplicationController

  def new
  end

  def create
    if current_user.nil? || current_user.empty?
      if params[:name].nil? || params[:name].empty?
        redirect_to '/sessions/new'
      else
        session[:name] = params[:name]
        render '/application/homepage'
      end
    else
      if current_user == params[:name]
        render '/application/homepage'
      else
        redirect_to '/sessions/destroy'
      end
    end
  end

  def destroy
    if !current_user.nil?
      session.delete :name
    end
    redirect_to '/sessions/new'
  end


end
