class SecretsController < ApplicationController
  before_action :login_required

  def show
    @username = current_user
  end

  def login_required
    redirect_to new_session_path unless !!session[:name]
  end

end
