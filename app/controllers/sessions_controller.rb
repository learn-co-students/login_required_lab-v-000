class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create, :show]

  def new

  end

  def create
    if params[:name].nil? || params[:name].blank?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to show_path
    end
  end

  def show
    if current_user
      @username = session[:name]
    else
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
