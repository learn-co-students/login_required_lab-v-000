class SecretsController < ApplicationController
  before_action :check_login

def show
  @username = current_user
end

private

  def check_login
    redirect_to root_path unless session.include? :name
  end
end
