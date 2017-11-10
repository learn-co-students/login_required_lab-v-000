class SecretsController < ApplicationController

  def show
    @secret = "https://www.google.com"
    redirect_to new_session_path unless session.include? :name
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
