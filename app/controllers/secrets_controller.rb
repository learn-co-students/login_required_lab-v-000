class SecretsController < ApplicationController

  def show
    if !current_user
      redirect_to '/sessions/login'
     end
  end

end
