class SecretsController < ApplicationController
  before_action :logged_in?

  def new
  end

  def show
    redirect_to "/login" if !logged_in?
  end

  def logged_in?
    !current_user.nil?
  end
end
