class SecretsController < ApplicationController
  before_action :require_login

  def show
    @secret = "French Bulldogs are the best!"
  end

  private

  def require_login
    if !session.include? :name
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/'
    end
  end
end
