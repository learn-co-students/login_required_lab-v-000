class SessionsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def index

  end

  def new

  end

  def create
    # binding.pry
    if params[:name] != "" && !params[:name].nil?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
  end

  private

    def require_login
      redirect_to login_path unless current_user
    end

end
