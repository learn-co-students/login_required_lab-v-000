class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to(controller: 'sessions', action: 'new') if params_name_blank?
    set_current_user
    redirect_to root_path
  end

  def show
    @current_user = current_user
  end

  def destroy
    session.delete(:name)
    redirect_to controller: 'sessions', action: 'new'
  end

  private

  def params_name_blank?
    params[:name].nil? || params[:name].empty? || params[:name].match(/^\s+$/)
  end

  def current_user
    session[:name]
  end

  def set_current_user
    session[:name] = params[:name]
  end
end

