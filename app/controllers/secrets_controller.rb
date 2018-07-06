class SecretsController < ApplicationController
  before_action :require_login

  def index
  end

  def show
    render :index
  end

  private

  def require_login
    redirect_to login_path unless session.include? :name
  end
end
