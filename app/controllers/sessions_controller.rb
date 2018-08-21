class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new

  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end

  private

  def sessions_params
    params.require(:session).permit(:name)
  end
end
