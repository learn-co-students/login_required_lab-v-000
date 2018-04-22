class SecretsController < ApplicationController

  before_action :require_login

  def show
    if !current_user
      redirect_to '/login'
    end

  end


end
