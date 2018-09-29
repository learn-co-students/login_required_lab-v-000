class SessionsController < ApplicationController

  def new
  end

  def create
    if input_failure
      redirect_to '/login'
    else
      login!
      redirect_to '/'
    end
  end

  def destroy
    logout! if logged_in?
    redirect_to '/login'
  end
end
