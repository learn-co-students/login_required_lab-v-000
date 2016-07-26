class SecretsController < ApplicationController

before_action :login?

  def show

  end

  def login?
    if current_user == nil
      redirect_to new_sessions_path
    end
  end

end
