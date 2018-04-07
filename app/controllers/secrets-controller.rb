class SecretsController < ApplicationController
  before_action :is_logged_in
  def show

  end

  def is_logged_in
    redirect_to login_path unless session[:name]
  end
end
