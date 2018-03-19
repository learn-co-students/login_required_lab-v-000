class SecretsController < ApplicationController
  before_action :require_login

  def require_login
    redirect_to root_path unless session.key? :name
  end
end
