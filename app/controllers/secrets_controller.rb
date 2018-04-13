class SecretsController < ApplicationController
  before_action :require_login
  helper_method :current_user

  def show
  end
end
