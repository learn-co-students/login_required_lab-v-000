class SecretsController < ApplicationController

  def show
    redirect_to '/new' unless session.include? :name
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
