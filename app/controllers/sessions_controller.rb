class SessionsController < ApplicationController

  def welcome
    redirect_to login_path unless session.include? :name
    @user = current_user
  end

  # def new
  #   @session = Session.new
  # end

  # def create
  #   @session = Session.new(username)
  #   @session.save
  # end
  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  # def login
  #   user = User.find_by(:name => params[user: 'name'])
  #   if user && user.authenticate(params[user: 'name'])
  #     session[username] = user.name
  #     redirect_to sessions_user_path
  #   else
  #     redirect_to sessions_login_path
  #   end
  # end

def destroy
  # def self.destroy
    session.clear
    redirect_to login_path
    # reset_session
  # redirect :root_path
  # session[:user_id] = []
  end


end
