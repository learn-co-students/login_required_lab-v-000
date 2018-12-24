class SecretsController < ApplicationController
  before_action :require_logged_in
  
  def show
	  render :top_secret
  end
end
