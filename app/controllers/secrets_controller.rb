class SecretsController < ApplicationController

  def show
    if session.include? :name
      return
    else
      redirect_to '/login'
    end
  end

end