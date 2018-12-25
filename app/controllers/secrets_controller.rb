class SecretsController < ApplicationController
  before_action :require_login

  def new
  end

  def show
    binding.pry
  end

 private

  def require_login
    redirect_to sessions_new_path unless current_user
  end
end
