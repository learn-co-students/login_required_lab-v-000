class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]


  def new
  end

  def create

    redirect_to 'index'
  end

  def index
    @username = params[:name]
  end

end
