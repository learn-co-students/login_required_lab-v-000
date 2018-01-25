class SecretsController < ApplicationController

  def show
    redirect_to '/sessions/new' if current_user.nil?
  end

end
