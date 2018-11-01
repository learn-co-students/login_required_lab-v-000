class SecretsController < ApplicationController
  before_action :logged_in

  def show
    # if current_user != logged_in
    #   redirect_to "/login"
    # else
    #   render "secrets/show"
    # end
  end
end
