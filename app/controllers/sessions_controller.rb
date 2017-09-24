class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to controller: 'sessions', action: 'new'
    else
      user_name = params[:name]
      session[:name] = user_name
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  private

  def current_user
    if session.include? :name
      render :show
    else
      render :new
    end
  end




end
