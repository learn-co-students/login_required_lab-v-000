class SecretsController < ApplicationController

  before_action :require_login

  def show
    #redirect_to "secrets/show"
  end

  private

    def require_login
      redirect_to login_path unless current_user
    end

end
