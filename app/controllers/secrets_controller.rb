class SecretsController < ApplicationController
  before_action :logged_in?

  def show
    if logged_in?
      @user = current_user
    else
      redirect_to sessions_new_path
    end
  end

  private
    def logged_in?
      !!current_user
    end
end
