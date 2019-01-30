class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user_id] = params[:user_id]
  end

  def destroy:
    session.delete :user_id
  end

end
