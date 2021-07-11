class SecretsController < ApplicationController

  before_action :current_user

  def welcome
    @name = current_user
  end

  def show
    if !current_user
      redirect_to login_url
    end
  end

end
