class SecretsController < ApplicationController
  before_action :logged_in

  def new
  end

  def show
  end
  
  
  private

  def logged_in
    redirect_to '/login' unless current_user
  end


end
