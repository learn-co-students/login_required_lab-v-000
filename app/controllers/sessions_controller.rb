class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def new
    render 'login'
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to homepage_path
    else
      redirect_to login_path
    end
  end

  def show
    if current_user
      @user = current_user
      render 'homepage'
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
