class SecretsController < ApplicationController
  before_action :current_user

  def new
    @name = params[:name]
  end

  def show
  end

end
