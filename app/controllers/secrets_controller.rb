class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

  private

  def require_login
    #byebug
    redirect_to root_url unless session.include? :name
end

end
