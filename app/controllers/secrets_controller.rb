class SecretsController < ApplicationController
  before_action :require_login

  def show
    @secret = ""
  end
end