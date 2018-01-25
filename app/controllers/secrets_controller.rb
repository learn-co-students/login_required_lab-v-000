class SecretsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def new
  end

  def create

  end

  def show
  end

  def destroy
  end

  private

  def require_login
    redirect_to '/sessions/new' unless session.include? :name
  end

end
