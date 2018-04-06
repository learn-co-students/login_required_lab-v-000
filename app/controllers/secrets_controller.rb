class SecretsController < ApplicationController
  before_action :require_login

  def show
  end


  private
  #this method is defined in the application controller in the provided solution.  Not sure why, besides maybe that it's a pretty general method which could be used in more than one controller
  def require_login
    redirect_to '/sessions/new' unless current_user
  end
end

