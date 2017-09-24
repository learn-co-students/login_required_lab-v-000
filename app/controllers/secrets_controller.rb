class SecretsController < ApplicationController

  def show
    if session.include? :name
      render :show
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end
