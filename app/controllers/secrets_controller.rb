class SecretsController < ApplicationController
  before_action :require_login

  def show
    @secret = Secret.find(params[:id])
  end

end
