class SecretsController < ApplicationController
  before_action :require_login
  
  def show
    render :home
  end
end
