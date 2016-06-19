class SessionsController < ApplicationController

  before_action :current_user
  skip_before_action :new

  def show

  end

  def index

  end

  def new
    @name = Name.new
  end

  def create
  #  binding.pry
    @name = Name.create(name: params[:name])
    session[:name] = @name.name
    if session[:name].blank?
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path
  end

end
