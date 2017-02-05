class SecretsController < ApplicationController
  
  def show
    redirect_to action: 'login' unless session.include? :name
  end

end