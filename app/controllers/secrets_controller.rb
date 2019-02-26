class SecretsController < ApplicationController
  before_action :require_login


  def new
  end

  def show
    end


  private

  def require_login
    return (redirect_to(sessions_new_url)) unless session.include? :name
  end
end
