class SessionsController < ApplicationController

  def new
    if session.include? :user_name
      render :show
    else
      render :new
    end
  end

  def create
    
  end

  def destroy
  end

end
