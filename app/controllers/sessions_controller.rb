class SessionsController < ApplicationController
  before_action :current_user
  def new
  end

  def create
    !params.include?(:name) || params[:name].empty? ? redirect_to(sessions_new_path) : session[:name] = params[:name]
  end

  def destroy
    session[:name] = nil if session[:name]
  end
end
