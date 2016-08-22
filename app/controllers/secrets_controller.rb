class SecretsController < ApplicationController

  def show
    #binding.pry
     redirect_to controller: "sessions", action: "new" unless session.include? :name
  end


end
