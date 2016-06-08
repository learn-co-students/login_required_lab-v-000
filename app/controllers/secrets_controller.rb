class SecretsController < ApplicationController

  # before_action :logged_in?
  def show
    if session[:name].nil?
      redirect_to login_path
    end
  end

  # protected
  #   def logged_in?
  #     byebug
  #     !!session[:name]
  #   end
end
