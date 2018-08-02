class SessionsController < ApplicationController

  def new
  end

  def create
    # if login name provided (not empty) and name is not " "
    # set session to the provided name
    if !params[:name].blank? && !params[:name].nil?
      session[:name] = params[:name]

      redirect_to '/welcome'
    else

      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session.delete :name

      render 'new'
    else
      nil

      render 'new'
    end
  end

  # private
  #
  # def session_params
  #   params.require(:session).permit(:name)
  # end
end
