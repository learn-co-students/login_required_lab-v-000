class SecretsController < ApplicationController
  before_filter :require_logged_in

  def show
  end

  private

  def require_logged_in
   redirect_to new_session_path unless session.include? :name
  end
end
