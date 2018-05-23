class SecretsController < ApplicationController
  before_action :required_login

  def index
  end

  def show
  end

  private

  def required_login
    unless session[:name]
      redirect_to '/login'
    end
  end

end
