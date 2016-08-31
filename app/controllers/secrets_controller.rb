class SecretsController < ApplicationController
  before_action :logged_in?

  def show
  end

  private
  def logged_in?
    redirect_to :new unless current_user != nil
  end
end
