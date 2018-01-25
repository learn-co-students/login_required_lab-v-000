class SecretsController < ApplicationController
  before_action :require_login

  def show
    @secret = Secret.find_by(name: params[:name])
  end


  private

  def require_login
    redirect_to 'http://test.host/new' unless session.include? :name
  end
end
