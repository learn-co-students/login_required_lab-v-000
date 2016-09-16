class SecretsController < ApplicationController
  before_action :require_login


  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

  def show
    render :'secrets'
  end
end
