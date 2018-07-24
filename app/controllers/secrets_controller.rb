class SecretsController < ApplicationController

  def show
    if session.include? :name
      render 'show'
    else
      redirect_to sessions_new_path
    end
  end
end
