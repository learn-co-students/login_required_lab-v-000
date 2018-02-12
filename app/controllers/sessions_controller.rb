class SessionsController < ApplicationController

  def new
  end

  def create
    if logged_in?
      redirect_to '/'
    else
      if valid_params?
        session[:name] = params[:name]

        redirect_to '/'
      else
        redirect_to '/login'
      end
    end
  end

  def destroy
    logout

    redirect_to '/'
  end

end
