class SecretsController < ApplicationController
  before_action :current_user

  def favorite_color
    render controller: secrets, action:
  end

end
