class SecretsController < ApplicationController
  before_action :require_login

# SecretsController get show should redirect to login if you're not logged in
# SecretsController get show should show you the secret if you're logged in
  def show
    byebug
    render '/secret/show'
  end

  private

  def require_login
    redirect_to login_path unless session.include? :user_id
  end
end
