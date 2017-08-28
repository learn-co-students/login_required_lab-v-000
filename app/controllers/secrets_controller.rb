class SecretsController < ApplicationController
  before_action :require_login

  def index
    @secret
  end
  def show
    # byebug
    @name = session[:name]
  end
end
