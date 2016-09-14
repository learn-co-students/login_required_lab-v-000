class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def show
  end

  private
    def require_login
      redirect_to controller: 'sessions', action: 'new' unless current_user
    end
end
