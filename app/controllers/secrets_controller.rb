class SecretsController < ApplicationController
  before_action :current_user?

  def show
    if current_user?
      render :show
    else
      redirect_to '/sessions/new'
    end
  end

  private

  def current_user?
    !session[:name].blank?
  end
end