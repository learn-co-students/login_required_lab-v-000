class SecretsController < ApplicationController
  def show
    authenticate_user
  end
end