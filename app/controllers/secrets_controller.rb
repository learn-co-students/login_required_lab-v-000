class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def show
  end

  private
    def require_login
      redirect_to new_session_path unless logged_in?
    end

end
