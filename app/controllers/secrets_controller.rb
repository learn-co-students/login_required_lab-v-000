class SecretsController < ApplicationController
  before_action :require_name

  def show
    if session[:name]
      render :show
    else
      redirect_to '/'
    end
  end

private

  def require_name
    redirect_to '/' unless session.include? :name
  end

end
