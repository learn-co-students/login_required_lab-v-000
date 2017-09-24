class SecretsController < ApplicationController

  def show
    unless session.include? :name
      redirect_to "/sessions/new"
    end
  end



end
