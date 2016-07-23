class SecretsController < ApplicationController

  def show
    require_login
  end



  private

  def require_login
    redirect_to "/login" unless session.include? :name
  end
end
