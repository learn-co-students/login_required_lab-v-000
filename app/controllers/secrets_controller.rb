class SecretsController < ApplicationController

  def show
    if session.include? :name

    else
      redirect_to '/sessions/new'
    end
  end

end
