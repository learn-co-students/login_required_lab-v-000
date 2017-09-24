class SecretsController < ApplicationController

  def show
    if session.include? :user_name
      render :show
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end
