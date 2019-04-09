class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

  def show
    if session.include? :name
      render 'secrets/show.html.erb'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end