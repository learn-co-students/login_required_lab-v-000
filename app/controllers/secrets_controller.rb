class SecretsController < ApplicationController
  before_action :require_login
  def show
    @secret = session[:name]
  end

  def new
  end

  private
    def require_login
      if !session.include? :name
        redirect_to '/sessions/new'
      end
    end
end
