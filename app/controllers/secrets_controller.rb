class SecretsController < ApplicationController
  def show
    return if redirect_to_if_not_logged_in?(new_session_path)
  end
end
