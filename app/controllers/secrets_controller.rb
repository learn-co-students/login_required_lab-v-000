class SecretsController < ApplicationController
  before_action :require_logged_in
  def new
  end

  def show
    #redirects to login in you're not logged in
    #shou you the secret if you're logged in
  end
end
