class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  private

  def require_login
    (redirect_to controller: 'sessions', action: 'new') unless session.include?(:name)
  end
end


#Write a SecretsController using a before_action to
#prevent any route from being accessed without logging in.
