class SecretsController < ApplicationController

  def show
    redirect_to root_path unless session.include? :name
  end
end
