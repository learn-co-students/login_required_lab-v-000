class SecretsController < ApplicationController


  def show
    return redirect_to(controller: 'sessions', action: 'new') if !current_user
  end

  private


end
