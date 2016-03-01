class SecretsController < ApplicationController
  before_action :require_login
  def show
    # if current_user
      @secret = "I am hungry"
    # else
      # redirect_to new_session_path
    # end
  end

  private

    def require_login
      redirect_to new_session_path unless current_user
    end
end