class SecretsController < ApplicationController
  before_action :require_login

def show
end

  def index
  end

  private

  def require_login
    redirect_to '/login' unless session.include? :name
  end
end
