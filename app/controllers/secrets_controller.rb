class SecretsController < ApplicationController
  before_action :require_action

  def show
  end

  private

  def require_action
    redirect_to '/sessions/new' unless session.include? :name
  end

end
