class SecretsController < ApplicationController
  before_action :require_logged_in
  
  def new
  end

  def show
    if !current_user
    redirect_to root_path
    end
  end

end
