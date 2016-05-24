class SecretsController < ApplicationController

  before_action  :logged_in
  skip_before_action :new

  def show
    if logged_in == false
      redirect_to '/sessions/new'
    end
  end

  def create

  end
end
