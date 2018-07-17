class SecretsController < ApplicationController
  before_action :logged_in?

  def show
    redirect_to login_path if !logged_in?
  end
end
