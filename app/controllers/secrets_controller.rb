class SecretsController < ApplicationController

  def show
    redirect_to new_session_path if session[:name].nil?

  end

end
