class SecretsController < ApplicationController
	before_action :require_login
 
  def show
    @secret = "Here is your secret code!"
  end
 
  private
 
  def require_login
    return head(:forbidden) unless session.include? :name
  end
end