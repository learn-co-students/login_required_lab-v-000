class SecretsController < ApplicationController
  before_action :logged_in?

  def show  
  end

  private
  
  def logged_in?
    redirect_to new_session_path unless session.include? :name
  end
end
