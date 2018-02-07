class SecretsController < ApplicationController

  def show
    redirect_to '/login' unless session.include? :name
  end

end