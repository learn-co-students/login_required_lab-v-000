class SecretsController < ApplicationController
  before_action :login_required

  def show
    @username = current_user
  end

  def login_required
    redirect_to sessions_new_path unless session.include? :name
  end
end
