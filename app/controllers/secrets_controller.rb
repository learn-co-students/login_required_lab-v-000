class SecretsController < ApplicationController
  before_action :login_required
  
  def show
    @user = current_user
  end

  def login_required
    redirect_to '/sessions/new' unless current_user
  end
  

end