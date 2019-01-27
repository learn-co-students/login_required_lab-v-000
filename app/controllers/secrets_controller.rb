class SecretsController < ApplicationController
  before_action :require_login

  def show
    @secrets = ["west", "up", "over", "right"]
  end

  private 

  def require_login
    redirect_to root_path, alert: "Please login to see secret page." unless !current_user.blank?
  end
end
