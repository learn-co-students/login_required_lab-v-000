class SecretsController < ApplicationController
  before_action :require_logged_in

  def index
    render :index
  end

  def show
    if current_user
      render 'secrets/show'
    else
      redirect_to '/'
    end
  end
end
