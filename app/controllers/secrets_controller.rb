class SecretsController < ApplicationController
  before_action :require_login
  def show
     # get show should show you the secret if you're logged in
  end
end
