class SessionsController < ApplicationController
  helper_method :current_user

  def current_user
    session[:name] ||= []
  end

  def new

  end

  def create

  end

  def destroy

  end
end
