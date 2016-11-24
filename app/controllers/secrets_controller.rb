class SecretsController < ApplicationController
  before_action :require_login

  def index
    render :index
  end

  def show
    # if current_user
    #   render 'secrets/show'
    # else
    #   redirect_to 'login'
    # end
  end
end
