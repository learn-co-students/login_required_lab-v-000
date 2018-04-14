class SecretsController < ApplicationController
  before_action :require_login

  def show
    if session.include? :name
      render :show
    else
      redirect_to login_path
    end
  end

  private


end
