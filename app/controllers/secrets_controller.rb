class SecretsController < ApplicationController

  def show
    unless session[:name].present?
      redirect_to '/new'
    end

  end
end
