class SessionsController < ApplicationController
  def new
    # nothing to do here!
  end

  def create
    raise params.inspect
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
  end
end
