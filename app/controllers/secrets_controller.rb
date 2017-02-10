class SecretsController < ApplicationController

  before_action :logged_in?
  # skip_before_action :logged_in?, only: [:index]

  def show
  end

  def logged_in?
    if !current_user
      redirect_to login_path
    end
  end
end
