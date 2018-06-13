class SecretsController < ApplicationController
  before_action :logged_in?


  def show
  end

  private

    def logged_in?
      redirect_to new_session_path unless current_user
    end

end
