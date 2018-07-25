class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index] #skip the require_login filter only on the index action

  def show
    render:show
  end

  def index
  end

  private

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless session.include? :name
  end

end
