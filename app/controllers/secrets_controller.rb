class SecretsController < ApplicationController
  before_action :logged_in?

  def show
    @name = current_user
  end

end
