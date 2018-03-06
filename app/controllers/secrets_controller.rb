class SecretsController < ApplicationController
  before_action :require_login

  def show
    if !current_user
      redirect_to '/sessions/login'
    end
  end
end
