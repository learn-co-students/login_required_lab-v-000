class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  def welcome
    @name = current_user
  end

end
