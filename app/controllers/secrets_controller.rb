class SecretsController < ApplicationController

  before_action :require_login

  def show
    if !current_user
      redirect_to '/login'
    else
      render :show
    end
  end

  private

  def require_login
    redirect_to '/login' unless session.include? session[:name]
  end


end
