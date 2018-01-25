class SecretsController < ApplicationController
  before_action :login
  
  def show

  end

  private

  def login
    redirect_to login_path unless current_user  
  end

end