class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    if !current_user
    redirect_to sessions_new_path
    end
  end

  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
