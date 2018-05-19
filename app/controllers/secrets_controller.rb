class SecretsController < ApplicationController
  before_action :login_required

  def index

  end

  def show

  end


  def login_required
    redirect_to '/login' unless session.include?(:name)
  end

end


