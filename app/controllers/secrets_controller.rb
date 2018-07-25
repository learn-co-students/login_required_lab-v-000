class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def show
    render:index
  end

  def index
  end

  private

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless session.include? :name
  end

end
