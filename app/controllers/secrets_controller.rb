class SecretsController < ApplicationController
  before_action :require_login
  # The content and URL of the secret page are up to you. However, if we visit that URL without logging in, we should be redirected to the login page. Under no circumstances should we allow people who are not logged in to see the secrets.
  def show
    @user = current_user
  end

  private

  def require_login
    redirect_to root_path unless session.include? :name
  end
end
