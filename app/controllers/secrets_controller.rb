class SecretsController < ApplicationController
  before_action :require_login
  # skip_before_action :require_login, only: [:index]

  def show
    current_user
  end

private

  def require_login
    redirect_to '/sessions/new' unless session.include? :name
  end

end
