class SecretsController < ApplicationController
  before_action  :login

  def show

  end

  def login
    redirect_to new_session_path if current_user.nil?
  end

end
