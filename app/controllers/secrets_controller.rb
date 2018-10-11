class SecretsController < ApplicationController
  helper_method :current_user
  def show
      if current_user == nil ||current_user.empty?
        redirect_to '/sessions/new'
      else
        current_user
    end
  end
end
