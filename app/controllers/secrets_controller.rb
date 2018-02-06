class SecretsController < ApplicationController
  before_action :require_login
  def show

  end

  private

  def logged_in?
    !session[:name].nil? && !session[:name].blank?
  end

  def require_login
    redirect_to sessions_new_path unless logged_in?
  end
end
