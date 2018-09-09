class SecretsController < ApplicationController
  helper :secrets
  before_action :require_login

  def show
  end
end
