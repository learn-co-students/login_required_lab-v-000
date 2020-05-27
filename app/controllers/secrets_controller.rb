class SecretsController < ApplicationController
  # This all works, but I want to refactor this stuff with #before_action (and in other ways if possible).
  # This is what they were looking for in the solution:
  # before_action :require_login # This is taken care of in the ApplicationController.

  def show
    # require_login and return # See ApplicationController
    # require_login # In this case, I don't need "and return"

    # render :show # For some reason, the URL for this ends in a ? mark.
    # Also, I don't need that line of code above, due to implicit rendering.
  end
end