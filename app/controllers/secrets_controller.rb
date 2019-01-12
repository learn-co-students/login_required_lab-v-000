class SecretsController < ApplicationController
  before_action :require_login

  def show
  @secret = params[:secret]
end

def index
end

def create
  @secret = Secret.create(author_id: user_id)
end

private

def require_login
  redirect_to '/sessions/new' unless session.include? :name
end

end
