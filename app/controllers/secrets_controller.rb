class SecretsController < ApplicationController

  def show
    if current_user
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end
