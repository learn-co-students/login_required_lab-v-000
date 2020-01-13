class SecretsController < ApplicationController
  # This all works, but I want to refactor this stuff with #before_action (and in other ways if possible).
  def show
    require_login and return # See ApplicationController

    render :show # For some reason, the URL for this ends in a ? mark.
  end
end