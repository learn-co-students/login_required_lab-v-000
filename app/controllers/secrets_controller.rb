class SecretsController < ApplicationController
  before_action :require_login

  def show
    session[:name]
  end
end
