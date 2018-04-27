class SecretsController < ApplicationController

  before_action :require_login, only: [:show]

  def show
    if !logged_in?
      redirect_to login_path
    end
  end

end
