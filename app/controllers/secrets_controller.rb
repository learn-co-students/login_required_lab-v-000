class SecretsController < ApplicationController
  # before_action :require_login
  def show
    redirect_to root_path unless session.include? :name
  end

end
