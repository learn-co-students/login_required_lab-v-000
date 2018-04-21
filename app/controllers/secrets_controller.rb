class SecretsController < ApplicationController
  before_action :require_login

  def welcome
    @user = current_user
  end

  def show
  end

  private

    def require_login
      if current_user.nil?
        redirect_to '/login'
      end
    end

end
