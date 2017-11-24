class SecretsController < ApplicationController
  before_action :login_required
  def show
  end

  def login_required
    redirect_to '/' unless session.include? :name
  end
end
