class UsersController < ApplicationController

  def new
    user = User.new(params)
  end

  def create
    @user = User.new
    @user.name = params[:name]

    if @user.save
      @user.id = session[:name]
      @user.name = params[:name]
      redirect_to sessions_user_path
    else
      render :sessions_new_user_path
    end

  end



end
