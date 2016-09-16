class SessionsController < ApplicationController

  def login
    user = User.find_by(:username => params[:username])
    if user && user.authenticate(params[:username])
      session[:user_id] = user.id
      redirect_to sessions_user_path
    else
      redirect_to new_user_path
    end
  end

  def new
    user = User.new(params)
  end

  def create
    # raise params.inspect
    @user = User.new
    @username = params[:username]

    if @user.save
      @user.id = session[:user_id]
      @user.username = params[:username]
      redirect_to sessions_user_path
    else
      render :sessions_new_user_path
    end

  end

  def current_user
    # session[:user_id] = user.id
    session[:username]
    render 'sessions/user'
  end


  def self.destroy
    reset_session
    redirect :root_path
    # session[:user_id] = []
  end


end
