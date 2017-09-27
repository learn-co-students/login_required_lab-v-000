class SecretsController < ApplicationController

  before_action :require_login


  def new
  end

  def show
    #redirect_to status: 200
  end

  private

    def require_login
      (redirect_to controller: 'sessions', action: 'new') unless session.include?(:name) 
    end


end
